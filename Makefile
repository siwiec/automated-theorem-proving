
PARSER_TESTS = $(wildcard parser/tests/*.sql)

setup:
	sudo apt-get install ghc cabal-install happy
	cabal install simple-sql-parser
	cabal install pretty-show

test-parser: parser/RunParser.hs $(PARSER_TESTS)
	$(foreach f,$(PARSER_TESTS),runhaskell parser/RunParser.hs $(f) > $(patsubst parser/tests/%.sql,parser/tests/%.ast,$(f)) ; )


clean:
	rm -f ./parser/tests/*.ast
	rm -f ./parser/tests/*.tptp
