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

def make_variables(x):
    if isinstance(x, str):
        return x.strip().replace('.', '_').upper()
    if isinstance(x, list):
        return list(map(make_variables, x))

def make_predicates(x):
    if isinstance(x, str):
        return x.strip().replace('.', '_').lower()
    if isinstance(x, list):
        return list(map(make_predicates, x))

def get_columns(predicate):
    global columns
    predicate = make_predicates(predicate)
    return columns.get(predicate, [])

def set_columns(predicate, variables):
    log("Setting columns:", predicate, variables)
    global columns
    if not isinstance(variables, list):
        variables = [variables]
    predicate = make_predicates(predicate)
    variables = make_variables(variables)
    for x in variables:
        assert(x not in get_external(predicate))
    columns[predicate] = variables

def add_columns(predicate, variables):
    if not isinstance(variables, list):
        variables = [variables]
    columns = get_columns(predicate)
    variables = make_variables(variables)
    variables = [x for x in variables if x not in columns]
    set_columns(predicate, columns + variables)

def get_external(predicate): # external variables used within query
    global external
    predicate = make_predicates(predicate)
    return external.get(predicate, [])

def set_external(predicate, variables):
    log("Setting external:", predicate, variables)
    global external
    if not isinstance(variables, list):
        variables = [variables]
    predicate = make_predicates(predicate)
    variables = make_variables(variables)
    for x in variables:
        assert(x not in get_columns(predicate))
    external[predicate] = variables

def add_external(predicate, variables):
    if not isinstance(variables, list):
        variables = [variables]
    external = get_external(predicate)
    variables = make_variables(variables)
    variables = [x for x in variables if x not in external]
    set_external(predicate, external + variables)

def get_variables(predicate):
    predicate = make_predicates(predicate)
    return get_columns(predicate) + get_external(predicate)

def get_predicates():
    return list(set(list(columns.keys()) + list(external.keys())))

def print_predicates():
    for predicate in get_predicates():
        save("", comment=predicate + "; columns: " + str(get_columns(predicate)) + "; external: " + str(get_external(predicate)))

counter = 0
def get_id(prefix):
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
        if len(variables) < 2:
            continue
        for variable in variables:
            save("fof(substitution_" + predicate + "_" + variable
                + ", axiom, ( ! [X, "
                + ", ".join(variables)
                + "] : (( " + variable + " = X & " + predicate + " ( "
                + ", ".join(variables) + ")) => " + predicate + " ( "
                + ", ".join(["X" if x == variable else x for x in variables])
                + ")))).")

    if len(get_variables("main_query_1")) == len(get_variables("main_query_2")):
        variables = ", ".join(get_variables("main_query_1"))
        save("", comment="Conjecture:")
        save("fof(equivalence_check, conjecture, ( ! [ " + variables + " ] : ( main_query_1(" + variables + ") <=> main_query_2(" + variables + ") ) )).")
        return 0
    else:
        save("", comment="These queries cannot be equivalent; different numbers of columns are selected")
        save("fof(equivalence_check, conjecture, ( $false )).")
        return 1



def parse_from(statement, values, columns):
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
    from_name = get_id('from')
    
    if not isinstance(statement, list):
        statement =  [statement]

    aliases = dict(zip(values, columns))

    fof_formulas = []
    all_new_variables = []
    all_external = []

    for subquery in statement: # for each entry in FROM

        log('subquery', subquery)
        
        if isinstance(subquery, dict):

            assert('value' in subquery)
            assert('name' in subquery)

            value = subquery['value']
            if isinstance(value, dict):
                subquery_name = parse_query(value, get_id("subquery_from"))
            else: # aliased simple table
                subquery_name = value

            alias = make_predicates(subquery['name']) # alias of a subquery or a table

            subquery_columns = get_columns(subquery_name)
            subquery_external = get_external(subquery_name)
            new_variables = make_variables([ alias + "_" + x for x in subquery_columns ])
            new_variables = [ aliases.get(x, x) for x in new_variables ]

            # add external variables to be visible from the outer query
            for variable in subquery_external:
                if variable not in all_external: # external variables may be reused in some subqueries
                    all_external.append(variable)

            for variable in new_variables:
                assert(variable not in all_new_variables) # subquery names must be unique
                all_new_variables.append(variable)


            fof_formulas.append(" ( " + subquery_name + " ( " + ", ".join(new_variables + subquery_external) + "))")

        else:
            assert(isinstance(subquery, str))
            table_name = make_predicates(subquery)
            table_columns = get_columns(table_name)
            log("table name", table_name, "table_columns", table_columns)
            assert(table_columns)
            table_external = get_external(table_name) # simple table must not have external dependencies
            assert(table_external == [])
            new_variables = make_variables([ table_name + "_" + x for x in table_columns ])
            new_variables = [ aliases.get(x, x) for x in new_variables ]

            for variable in new_variables:
                assert(variable not in all_new_variables) # subquery names must be unique
                all_new_variables.append(variable)

            fof_formulas.append(" ( " + table_name + " ( " + ", ".join(new_variables) + "))")

    log("all new variables", all_new_variables)
    
    set_columns(from_name, all_new_variables)
    set_external(from_name, all_external)

    save("fof(" + from_name + ", definition, ( ! [" + ", ".join(get_variables(from_name)) + "] : ("
            + from_name + " ( " + ", ".join(get_variables(from_name)) + ") <=> ("
            + " & ".join(fof_formulas)
            + " )))).", comment = json.dumps(statement, indent=4))
    
    return from_name # return variables as seen in scope






def parse_where(statement, from_name, values, columns):
    """

    """

    def parse_where_item(item, where_name, values, columns, known_variables):
        aliases = dict(zip(values, columns))

        for x in ['eq', 'neq', 'lt', 'lte', 'gt', 'gte']:
            if x in item:
                fst = make_variables(item[x][0])
                snd = make_variables(item[x][1])
                fst = aliases.get(fst, fst)
                snd = aliases.get(snd, snd)

                if fst not in known_variables: # not defined in FROM!
                    add_external(where_name, fst)
                else:
                    add_columns(where_name, fst)
                if snd not in known_variables: # not defined in FROM!
                    add_external(where_name, snd)
                else:
                    add_columns(where_name, snd)
                fof_formula = x + " ( " + fst + ", " + snd + " ) "
                return fof_formula

        for x in ['in']:
            if x in item:
                fst = make_variables(item[x][0])
                fst = aliases.get(fst, fst)
                if fst not in known_variables: # not defined in FROM!
                    add_external(where_name, fst)
                else:
                    add_columns(where_name, fst)

                subquery_name = parse_query(item[x][1], name=get_id(where_name + "_subquery"))
                subquery_external = get_external(subquery_name)
                for variable in subquery_external:
                    if variable in known_variables:
                        add_columns(where_name, variable)
                    else:
                        add_external(where_name, variable)
                return " ( " + subquery_name + " ( " + ", ".join([fst] + subquery_external) + "))"

        for x in ['and', 'or']:
            if x in item:
                fst_fof = parse_where_item(item[x][0], where_name, values, columns, known_variables)
                snd_fof = parse_where_item(item[x][1], where_name, values, columns, known_variables)
                if x == 'and': symbol = '&'
                if x == 'or':  symbol = '|'
                fof_formula = " ( " + fst_fof + " " + symbol + " " + snd_fof + " ) "
                return fof_formula

        if 'not' in item:
            fof_formula = parse_where_item(item['not'], where_name, values, columns, known_variables)
            return "( ~ " + fof_formula + " ) "


    where_name = get_id('where')
    
    from_columns = get_columns(from_name) # variables defined in the FROM clause
    aliases = dict(zip(values, columns))
    known_variables = [aliases.get(x, x) for x in from_columns] # replace values with their aliases

    fof_formula = parse_where_item(statement, where_name, values, columns, known_variables)
    
    save("fof("
            + where_name
            + ", definition, ( ! ["
            + ", ".join(get_variables(where_name))
            + "] : ("
            + where_name
            + " ( " + ", ".join(get_variables(where_name))
            + ") <=> ("
            + fof_formula
            + ")))).", comment = json.dumps(statement, indent=4))

    return where_name






def parse_select(statement):
    """
    Parse a single SELECT statement.
    
    Parameters:
        dict: parsed SELECT statement

    Returns:
        string: name of the subquery

    """

    select_name = get_id("select")

    selected = statement['select']
    if not isinstance(selected, list):
        selected = [selected]
    
    # local variables (resolved aliases)
    values = [ make_variables(x['value']) for x in selected ] # list of values TABLENAME_COLUMNNAME

    # exposed columns
    columns = [ make_variables(x['name']) if 'name' in x else make_variables(x['value'].split('.')[-1]) for x in selected ]


    # Parsing of the FROM clause
    from_name = parse_from(statement['from'], values, columns)
    from_fof = from_name + " ( " + ", ".join(get_variables(from_name)) + " ) "


    # Parsing of the WHERE clause
    if 'where' in statement:
        where_name = parse_where(statement['where'], from_name, values, columns)
        where_fof = where_name + " ( " + ", ".join(get_variables(where_name)) + " ) "
        external = [x for x in set(get_external(from_name) + get_external(where_name)) if x not in columns]
    else:
        where_fof = "$true"
        external = [x for x in set(get_external(from_name)) if x not in columns] # no externals from WHERE

    set_columns(select_name, columns)
    set_external(select_name, external)

    # Generating a TPTP formula
    forall = get_variables(select_name)
    exists = [ x for x in get_variables(from_name) if x not in forall ]

    save("fof(" + select_name + ", definition, ( ! ["
                + ", ".join(forall)
                + "] : ("
                + select_name
                + " ( "
                    + ", ".join(forall)
                + ") <=> (" +
                    (" ? ["
                    + ", ".join(exists)
                    + "] : " if exists else "") + 
                " ( " + from_fof + " & " + where_fof + " ) "
                +" ) "
            + " ) "
        + ")).", comment=json.dumps(statement, indent=4))

    return select_name





def parse_query(statement, name=None):
    """
    Adds an external query definition by adding a new predicate with an appropriate name
    """
    if name is None:
        query_name = get_id('query')
    else:
        query_name = name

    select_name = parse_select(statement)
    set_columns(query_name, get_columns(select_name))
    set_external(query_name, get_external(select_name))

    save("fof("
            + query_name
            + ", definition, ( ! ["
            + ", ".join(get_variables(query_name))
            + "] : ("
            + query_name
            + " ( " + ", ".join(get_variables(query_name))
            + ") <=> ("
            + select_name
            + " ( " + ", ".join(get_variables(select_name))
            + "))))).", comment=json.dumps(statement, indent=4))

    return query_name




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
    log(columns)
    log(external)

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

    conjecture = build_axioms()
        
    print_predicates()
    for line in output:
        print(line)

    log("Columns:")
    log(json.dumps(columns, indent=4))
    log("External:")
    log(json.dumps(external, indent=4))
    
    log("Exiting with code: " + str(conjecture))
    sys.exit(conjecture)
