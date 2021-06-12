#!/usr/bin/python3

import sys
import moz_sql_parser
import json

columns = {} # maps predicates to lists of column names
external = {} # maps predicates to lists of neccessary external variables

debug = True
comments = True

def log(*args):
    if debug:
        print(*args, file=sys.stderr)

def make_variable(x):
    return x.strip().replace('.', '_').upper()

def make_predicate(x):
    return x.strip().replace('.', '_').lower()

def get_columns(predicate):
    global columns
    return columns.get(make_predicate(predicate), [])

def set_columns(predicate, variables):
    global columns
    if not isinstance(variables, list):
        variables = [variables]
    predicate = make_predicate(predicate)
    variables = [make_variable(x) for x in variables]
    columns[predicate] = variables

def get_external(name):
    global external
    return external.get(make_predicate(name), [])

def set_external(predicate, variables):
    global external
    if not isinstance(variables, list):
        variables = [variables]
    predicate = make_predicate(predicate)
    variables = [make_variable(x) for x in variables]
    external[predicate] = variables

def get_predicates():
    return list(set(list(columns.keys()) + list(external.keys())))

def get_variables(predicate):
    predicate = make_predicate(predicate)
    return get_columns(predicate) + get_external(predicate)

def print_predicates():
    for predicate in get_predicates():
        save("", comment=predicate + " " + str(get_columns(predicate)) + " " + str(get_external(predicate)))

counter = 0
def get_id(prefix=''):
    global counter
    counter += 1
    return prefix + "_" + str(counter)

output = []
def save(x, comment=None):
    global debug
    global output
    if debug and comment:
        for line in comment.splitlines():
            output.append("% " + line)
        
    output.append(x)
    log(x)

def build_axioms():
    global columns

    save("", comment="Axioms:")
    save("fof(reflexivity_of_equality, axiom, ( ! [X] : eq(X, X) )).")
    save("fof(symmetry_of_equality, axiom, ( ! [X,Y] : ( eq(X, Y) => eq (Y, X) ) )).")
    save("fof(transitivity_of_equality, axiom, ( ! [X,Y,Z] : ( ( eq(X, Y) & eq(Y, Z) ) => eq(X, Z) ) )).")
    save("fof(reflexivity_of_less_than_or_equal, axiom, ( ! [X] : lte(X,X) )).")
    save("fof(antisymmetry_of_less_than_or_equal, axiom, ( ! [X,Y] : ( ( lte(X,Y) & lte(Y,X) ) <=> eq(X, Y) ) )).")
    save("fof(transitivity_of_less_than_or_equal, axiom, ( ! [X,Y,Z] : ( ( lte(X,Y) & lte(Y,Z) ) => lte(X,Z) ) )).")

    save("fof(less_than_definition, definition, ( ! [X,Y] : ( ( lt(X,Y) ) <=> ( lte(X,Y) & (~ eq(X,Y))) ) )).")
    save("fof(greater_than_definition, definition, ( ! [X,Y] : ( ( gt(X,Y) ) <=>  ( lt(Y,X)) ) )).")
    save("fof(not_equal_definition, definition, ( ! [X,Y] : ( ( neq(X,Y) ) <=> (~ eq(X,Y)) ) )).")
    save("fof(greater_than_or_equal_definition, definition, ( ! [X,Y] : ( ( gte(X,Y) ) <=> (lte(Y,X))) )).")

    for predicate in get_predicates():
        variables = get_variables(predicate)
        for variable in variables:
            save("fof(substitution_" + predicate + "_" + variable
                + ", axiom, ( ! [X, "
                + ", ".join(variables)
                + "] : (( " + variable + " = X & " + predicate + "("
                + ", ".join(variables) + ")) => " + predicate + "("
                + ", ".join(["X" if x == variable else x for x in variables])
                + ")))).")

    variables = ", ".join(get_variables("main_query_1"))
    save("", comment="Conjecture:")
    save("fof(equivalence_check, conjecture, ( ! [ " + variables + " ] : ( main_query_1(" + variables + ") <=> main_query_2(" + variables + ") ) )).")



def parse_from(statement):
    """
    Parse list of statements within a FROM clause.

    Parameters:
        from_statement (dict or list(dict)): Input statement
    
    Returns:
        A tuple (variables, mapping, formula), where
            variables : list of variables exposed by the FROM clause to the outer SELECT
            mapping   : a dictionary mapping local names (within the outer SELECT) to global columns' definitions
            formula   : an first-order logic formula describing the FROM clause

    """
    
    if not isinstance(statement, list):
        statement =  [statement]


    predicates = []
    columns = []

    for subquery in statement:

        log('subquery', subquery)
        if isinstance(subquery, dict):
            value = subquery['value']
            alias = subquery.get('name', None)

            if isinstance(value, dict):
                table_name = parse_query(value) # Nested subquery
                assert(alias is not None)
            else:
                table_name = value # Aliased simple table reference

            if alias:
                table_columns = [make_variable(alias) + "_" + x for x in get_columns(table_name)]
            else:
                table_columns = [make_variable(table_name) + "_" + x for x in get_columns(table_name)]
        else:
            table_name = subquery # Unaliased simple table
            table_columns = [make_variable(table_name) + "_" + x for x in get_columns(table_name)]
        
        predicates.append((table_name, table_columns))
        columns += table_columns

    #TODO support for 'from tab as a, tab as b'

    name = get_id('from')
    set_columns(name, columns)

    save("fof("
            + name
            + ", definition, ( ! ["
            + ", ".join(get_columns(name))
            + "] : ("
            + name
            + "(" + ", ".join(get_columns(name))
            + ") <=> ("
            + " & ".join([predicate + "(" + ", ".join(table_columns) + ")" for (predicate,  table_columns) in predicates])
            + " )))).", comment = json.dumps(statement, indent=4))
    
    return name # return variables as seen in scope






def parse_where(statement, aliases={}):
    """

    """

    def parse_where_item(item, aliases):
        for x in ['eq', 'neq', 'lt', 'lte', 'gt', 'gte']:
            if x in item:
                fst = make_variable(item[x][0])
                snd = make_variable(item[x][1])
                fst = aliases.get(fst, fst) # if aliased, replace with original value
                snd = aliases.get(snd, snd) # if aliased, replace with original value
                variables = list(set([fst, snd]))
                fof_formula = x + "(" + fst + ", " + snd + ")"
                return (variables, fof_formula)

        for x in ['and', 'or']:
            if x in item:
                vars1, fst = parse_where_item(item[x][0], aliases)
                vars2, snd = parse_where_item(item[x][1], aliases)
                variables = list(set(vars1 + vars2))
                if x == 'and': symbol = '&'
                if x == 'or':  symbol = '|'
                fof_formula = "(" + fst + " " + symbol + " " + snd + ")"
                return (variables, fof_formula)
        for x in ['in']:
            if x in item:
                subquery_name = parse_query(item[x][1])
                variable = make_variable(item[x][0])
                if get_external(subquery_name):
                    return ([variable], "(" + subquery_name + "(" + variable + ", " + ", ".join(get_external(subquery_name)) + "))")
                else:
                    return ([variable], "(" + subquery_name + "(" + variable + "))")

        if 'not' in item:
            variables, fof_formula = parse_where_item(item['not'], aliases)
            return (variables, "( ~ " + fof_formula + ")")
    log("WHERE STATEMENT", statement)
    name = get_id('where')
    variables, fof_formula =  parse_where_item(statement, aliases)
    set_columns(name, variables)
    save("fof("
            + name
            + ", definition, ( ! ["
            + ", ".join(get_columns(name))
            + "] : ("
            + name
            + "(" + ", ".join(get_columns(name))
            + ") <=> ("
            + fof_formula
            + ")))).", comment = json.dumps(statement, indent=4))

    return name






def parse_select(statement):
    """
    Parse a single SELECT statement.
    
    Parameters:
        dict: parsed SELECT statement

    Returns:
        string: name of the subquery

    """

    select_predicate = get_id("select")



    # Parsing of the SELECT list

    selected = statement['select']
    if not isinstance(selected, list):
        selected = [selected]
    
    values  = [ make_variable(x['value']) for x in selected ] # non-aliased values selected
    aliases = {
        (make_variable(x['name']) if 'name' in x else x['value'].split('.')[-1])
        : make_variable(x['value'])
        for x in selected
    }

    columns = [] # all externally visible columns
    for item in selected:
        if 'name' in item:
            columns.append(item['name']) # get alias
        #elif '.' in item['value']: # get the last part of column name
        #   columns.append(item['value']) # get plain column name
        else:
            columns.append(item['value'].split('.')[-1])

    columns = [make_variable(x) for x in columns] # all externally visible columns

    # Parsing of the FROM clause
    from_predicate = parse_from(statement['from'])
    from_external = get_external(from_predicate)
    from_variables = get_variables(from_predicate)
    from_fof = from_predicate + "(" + ", ".join(from_variables) + ")"

    # Parsing of the WHERE clause
    if 'where' in statement:
        where_predicate = parse_where(statement['where'], aliases)
        where_variables = get_variables(where_predicate)
        where_fof = where_predicate + "(" + ", ".join(where_variables) + ")"
        where_external = [x for x in where_variables if x not in from_variables]
    else:
        where_fof = "$true"
        where_external = []

    external = list(set(from_external + where_external))
    exists = [x for x in from_variables if x not in values]

    
    save("fof(" + select_predicate + ", definition, ( ! ["
                + ", ".join(values)
            + "] : ("
                + select_predicate
                + "("
                    + ", ".join(values)
                + ") <=> (" +
                    (" ? ["
                    + ", ".join(exists)
                    + "] : " if exists else "") + 
                "(" + from_fof + " & " + where_fof + ")"
                +")"
            + ")"
        + ")).", comment=json.dumps(statement, indent=4))

    set_columns(select_predicate, columns)
    set_external(select_predicate, external)
    return select_predicate





def parse_query(statement, name=None):
    """
    Adds an external query definition by adding a new predicate with an appropriate name
    """
    if not name:
        name = get_id('query')
    query_name = parse_select(statement)
    set_columns(name, get_columns(query_name))
    save("fof("
            + name
            + ", definition, ( ! ["
            + ", ".join(get_columns(query_name))
            + "] : ("
            + name
            + "(" + ", ".join(get_columns(query_name))
            + ") <=> ("
            + query_name
            + "(" + ", ".join(get_columns(query_name))
            + "))))).", comment=json.dumps(statement, indent=4))

    return name




"""
"""
def tptp(sql, name=None):
    try:
        statement = moz_sql_parser.parse(sql)
    except Exception as e:
        log(e)
        sys.exit(-1)
    parse_query(statement, name)


if __name__ == '__main__':
    if len(sys.argv) > 4:
        log("Incorrect number of arguments")
        sys.exit(-1)
    # read database schema
    with open(sys.argv[1]) as f:
        for line in f.readlines():
            items = line.strip().split()
            if items:
                set_columns(items[0], items[1:])

    # read two query files
    try:
        with open(sys.argv[2]) as f:
            sql1 = f.read().lower()
            log(sql1)
        with open(sys.argv[3]) as f:
            sql2 = f.read().lower()
            log(sql2)
    except Exception as e:
        log(e)
        sys.exit(-1)

    log("Translating " + sys.argv[2] + "...")
    tptp(sql1, 'main_query_1')

    log("Translating " + sys.argv[3] + "...")
    tptp(sql2, 'main_query_2')

    build_axioms()
    print_predicates()
    for line in output:
        print(line)

    log("Columns:")
    log(json.dumps(columns, indent=4))
    log("External:")
    log(json.dumps(external, indent=4))
