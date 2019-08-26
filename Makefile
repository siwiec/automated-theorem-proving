help: ## Print help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

all: install docs ## Install automated-theorem-prover and create the documentation

install: build ## Build and install the automated-theorem-prover
	cabal install

build: src/* ## Build package (executable file will be in the dist/ directory)
	cabal configure
	cabal build

setup: ## Install all system dependencies (necessary for `make build` and `make install`)
	sudo apt-get install ghc cabal-install happy
	cabal install simple-sql-parser
	cabal install pretty-show

test: clean-tests build install
	./run_tests.sh

clean-tests: ## Remove all .tptp files in the tests/ directory
	rm -f examples/*/*.tptp
	rm -f examples/*/*.vampire
	rm -f examples/*/*.translated
	rm -f examples/*/*.times
	rm -f examples/*/*.e



clean-build: ## Remove the dist/ directory
	rm -rf dist

clean-docs: ## Remove the docs/ directory
	rm -rf docs

clean-all: clean-build clean-tests clean-docs ## Remove all files not under version control

docs: src/* ## Create doc files
	haddock --odir=docs --html src/*

