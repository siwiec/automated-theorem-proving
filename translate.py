#!/usr/bin/python3

import sys
import moz_sql_parser
import json

tables = {} # maps table names to lists of column names

debug = True
comments = True



def make_variable(x):
	return x.replace('.', '_').upper()

def make_predicate(x):
	return x.replace('.', '_').lower()

def log(*args):
	if debug:
		print(*args, file=sys.stderr)

output = []
def save(x, comment=None):
	global debug
	global output
	if debug and comment:
		output.append("")
		for line in comment.splitlines():
			output.append("% " + line)
		
	output.append(x)

def build_axioms():
	global tables

	save("", comment="Axioms:")
	save("fof(reflexivity_of_equality, axiom, ( ! [X] : X = X )).")
	save("fof(symmetry_of_equality, axiom, ( ! [X,Y] : ( X = Y => Y = X ) )).")
	save("fof(transitivity_of_equality, axiom, ( ! [X,Y,Z] : ( ( X = Y & Y = Z ) => X = Z ) )).")
	save("fof(reflexivity_of_less_than_or_equal, axiom, ( ! [X] : lessthanorequal(X,X) )).")
	save("fof(antisymmetry_of_less_than_or_equal, axiom, ( ! [X,Y] : ( ( lessthanorequal(X,Y) & lessthanorequal(Y,X) ) => X = Y ) )).")
	save("fof(transitivity_of_less_than_or_equal, axiom, ( ! [X,Y,Z] : ( ( lessthanorequal(X,Y) & lessthanorequal(Y,Z) ) => lessthanorequal(X,Z) ) )).")

	for table in tables:
		columns = get_columns(table)
		for column in columns:
			save("fof(substitution_" + table + "_" + column
				+ ",axiom,( ! [X,"
				+ ",".join(columns)
				+ "] : ( ( " + column + " = X & " + table + "("
				+ ",".join(columns) + ") ) => " + table + "("
				+ ",".join(["X" if x == column else x for x in columns])
				+ ") ) )).")

	columns = ",".join(get_columns("main_query_1"))
	save("", comment="Conjecture:")
	save("fof(equivalence_check,conjecture,( ! [ " + columns + " ] : ( main_query_0(" + columns + ") <=> main_query_1(" + columns + ") ) )).")


def get_columns(name):
	global tables
	#log('getting', name, tables[make_predicate(name)])
	return [make_variable(x) for x in tables[make_predicate(name)]]

def set_columns(name, columns):
	global tables
	if not isinstance(columns, list):
		columns = [columns]
	tables[make_predicate(name)] = [make_variable(x) for x in columns]
	log('setting', name, tables[make_predicate(name)])



counter = 0
def get_id(prefix=''):
	global counter
	counter += 1
	return prefix + "_" + str(counter)






def parse_from(statement):
	"""
	Parse list of statements within a FROM clause.

	Parameters:
		from_statement (dict or list(dict)): Input statement
	
	Returns:
		A tuple (variables, mapping, formula), where
			variables : list of variables exposed by the FROM clause to the outer SELECT
			mapping   : a dictionary mapping local names (within the outer SELECT) to global tables' definitions
			formula   : an first-order logic formula describing the FROM clause

	"""
	
	if not isinstance(statement, list):
		statement =  [statement]


	predicates = []
	columns = []

	for subquery in statement:

		log('subquery', subquery)
		if isinstance(subquery, dict):
			value = subquery['value'] # TODO: TypeError: string indices must be integers (query8.sql)
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
			+ ",definition,( ! ["
			+ ",".join(get_columns(name))
			+ "] : ("
			+ name
			+ "(" + ",".join(get_columns(name))
			+ ") <=> ("
			+ " & ".join([predicate + "(" + ",".join(table_columns) + ")" for (predicate, table_columns) in predicates])
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
				fof_formula = x + "(" + fst + "," + snd + ")"
				return (variables, fof_formula)

		for x in ['and', 'or']:
			if x in item:
				vars1, fst = parse_where_item(item[x][0], aliases)
				vars2, snd = parse_where_item(item[x][1], aliases)
				variables = list(set(vars1 + vars2))
				if x == 'and': symbol = '&'
				if x == 'or':  symbol = '|'
				if x == 'and': symbol = '&' #TODO
				if x == 'and': symbol = '&'
				if x == 'and': symbol = '&'
				if x == 'and': symbol = '&'
				if x == 'and': symbol = '&'
				fof_formula = "(" + fst + " " + symbol + " " + snd + ")"
				return (variables, fof_formula)

		if 'not' in item:
			variables, fof_formula = parse_where_item(item['not'][0])
			return (variables, "( !" + fof_formula + ")")

	name = get_id('where')
	variables, fof_formula =  parse_where_item(statement, aliases)
	set_columns(name, variables)
	save("fof("
			+ name
			+ ",definition,( ! ["
			+ ",".join(get_columns(name))
			+ "] : ("
			+ name
			+ "(" + ",".join(get_columns(name))
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

	name = get_id("select")


	# Parsing of the SELECT list

	selected = statement['select']
	if not isinstance(selected, list):
		selected = [selected]

	values  = [make_variable(x['value']) for x in selected] # non-aliased values selected
	aliases = {make_variable(x['name']) : make_variable(x['value']) for x in selected if 'name' in x}

	columns = [] # all externally visible columns
	for item in selected:
		if 'name' in item:
			columns.append(item['name'])
		elif '.' in item['value']:
			columns.append(item['value'].split('.')[-1])
		else:
			columns.append(item['value'])

	columns = [make_variable(x) for x in columns] # all externally visible columns

	# Parsing of the FROM clause
	from_name = parse_from(statement['from'])

	# Parsing of the WHERE clause
	if 'where' in statement:
		where_name = parse_where(statement['where'], aliases)
	else:
		where_name = None
	
	#TODO dodac rzeczy widziane z where do selecta
	
	exists = [x for x in get_columns(from_name) if x not in values]

	from_predicate = from_name + "(" + ",".join(get_columns(from_name)) + ")"
	if where_name:
		where_predicate = where_name + "(" + ",".join(get_columns(where_name)) + ")"
	else:
		where_predicate = "$true"

	save("fof(" + name + ", definition, ( ! ["
				+ ",".join(values)
			+ "] : ("
				+ name
				+ "("
					+ ",".join(values)
				+ ") <=> ( ? ["
					+ ",".join(exists)
					+ "] : (" + from_predicate + " & " + where_predicate + ")"
				+")"
			+ ")"
		+ ")).", comment=json.dumps(statement, indent=4))

	set_columns(name, columns)
	return name





"""
"""
def parse_query(statement, name=None):
	if not name:
		name = get_id('query')
	query_name = parse_select(statement)
	set_columns(name, get_columns(query_name))
	save("fof("
			+ name
			+ ",definition,( ! ["
			+ ",".join(get_columns(query_name))
			+ "] : ("
			+ name
			+ "(" + ",".join(get_columns(query_name))
			+ ") <=> ("
			+ query_name
			+ "(" + ",".join(get_columns(query_name))
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
	if len(sys.argv) != 4:
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
	for line in output:
		if not comments and line[0] == '%':
			continue
		print(line)

