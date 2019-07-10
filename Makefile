PARSER_TESTS = $(wildcard tests/*.sql)

help: ## Print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install: build ## Build and install the automated-theorem-prover
	cabal install

build: src/* ## Build package (executable file will be in the dist/ directory)
	cabal configure
	cabal build

setup: ## Install all system dependencies (necessary for `make build` and `make install`)
	sudo apt-get install ghc cabal-install happy
	cabal install simple-sql-parser
	cabal install pretty-show

test: src/RunParser.hs $(PARSER_TESTS) ## Run basic tests (.ast and .tptp files will be created in the tests/ directory)
	$(foreach f,$(PARSER_TESTS),runhaskell src/RunParser.hs $(f) > $(patsubst tests/%.sql,tests/%.ast,$(f)) ; )

clean-tests: ## Remove all the .ast and .tptp files in the tests/ directory
	rm -f tests/*.ast
	rm -f tests/*.tptp

clean-build: ## Remove the dist/ directory
	rm -rf dist

clean-all: clean-dist clean-tests ## Remove all files not under version control
