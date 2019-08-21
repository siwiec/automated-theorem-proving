#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

for f in examples/*/*.sql; do
    echo "Running automated-theorem-prover for file $f...";
    ./dist/build/automated-theorem-proving/automated-theorem-proving $f > ${f/.sql/.translated}
    retval=$?
    if [ $retval -ne 0 ]; then
        echo -e "     ${RED}FAILURE:${NC} automated-theorem-proving exited with code $retval"
        continue
    else
        echo -e "     ${GREEN}SUCCESS:${NC} automated-theorem-proving exited with code $retval"
    fi
    echo "Running tptp4X for file ${f/.sql/.translated}...";
    ./tptp4X ${f/.sql/.translated} > ${f/.sql/.tptp}
    retval=$?
    if [ $retval -ne 0 ]; then
        echo -e "     ${RED}FAILURE:${NC} tptp4X exited with code $retval"
        continue
    else
        echo -e "     ${GREEN}SUCCESS:${NC} tptp4X exited with code $retval"
    fi
    if grep -q equivalence_check ${f/.sql/.tptp} ; then
        echo "Running equivalence checks (vampire) for file ${f/.sql/.tptp}"
        /usr/bin/time --format="%C:\n\t%E real, %U user, %S sys" --output=${f/.sql/.times} --append \
            ./vampire4.2.2 ${f/.sql/.tptp} > ${f/.sql/.vampire}

        echo "Running equivalence checks (E) for file ${f/.sql/.tptp}"
        /usr/bin/time --format="%C:\n\t%E real, %U user, %S sys" --output=${f/.sql/.times} --append \
            ./eprover ${f/.sql/.tptp} > ${f/.sql/.e}
    fi
done
