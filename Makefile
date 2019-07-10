PARSER_TESTS = $(wildcard tests/*.sql)

setup:
	sudo apt-get install ghc cabal-install happy
	cabal install simple-sql-parser
	cabal install pretty-show

test-parser: src/parser/RunParser.hs $(PARSER_TESTS)
	$(foreach f,$(PARSER_TESTS),runhaskell src/parser/RunParser.hs $(f) > $(patsubst parser/tests/%.sql,parser/tests/%.ast,$(f)) ; )

clean:
	rm -f tests/*.ast
	rm -f tests/*.tptp
