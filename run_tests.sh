#!/bin/bash

for f in tests/*.sql; do
    echo "Running automated-theorem-prover for file $f...";
    ./dist/build/automated-theorem-proving/automated-theorem-proving $f > ${f/.sql/.translated}
    echo "Running tptp4X for file ${f/.sql/.translated}...";
    ./tptp4X ${f/.sql/.translated} > ${f/.sql/.tptp}
    if grep -q equivalence_check ${f/.sql/.tptp} ; then
        echo "Running equivalence checks for file ${f/.sql/.tptp}"
        /usr/bin/time --format="%C:\n\t%E real,\t%U user,\t%S sys" --output=${f/.sql/.times} --append ./vampire4.2.2 ${f/.sql/.tptp} > ${f/.sql/.vampire}
    fi
done
