TEST_FILES = $(wildcard tests/*.sql)

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

test: build
	for f in $(TEST_FILES); do \
		echo "Running automated-theorem-prover for file $$f..."; \
		./dist/build/automated-theorem-proving/automated-theorem-proving $$f | tee tmp.tptp; \
		echo "Running tptp4X for file $$f..."; \
		./tptp4X tmp.tptp | tee $(addsuffix .tptp, $$f); \
		rm tmp.tptp; \
		if grep -q equivalence_check "$(addsuffix .tptp, $$f)" ; then \
			./vampire4.2.2 $(addsuffix .tptp, $$f) | tee $(addsuffix .vampire, $$f); \
		fi \
	done

clean-tests: ## Remove all .tptp files in the tests/ directory
	rm -f tests/*.tptp

clean-build: ## Remove the dist/ directory
	rm -rf dist

clean-docs: ## Remove the docs/ directory
	rm -rf docs

clean-all: clean-build clean-tests clean-docs ## Remove all files not under version control

docs: src/* ## Create doc files
	haddock --odir=docs --html src/*

