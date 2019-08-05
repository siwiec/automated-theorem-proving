#!/bin/bash

for f in tests/*/*.sql; do
    echo "Running automated-theorem-prover for file $f...";
    /usr/bin/time --format="%C:\n\t%E real, %U user, %S sys" --output=${f/.sql/.times} --append \
        ./dist/build/automated-theorem-proving/automated-theorem-proving $f > ${f/.sql/.translated}
    echo "Running tptp4X for file ${f/.sql/.translated}...";
    /usr/bin/time --format="%C:\n\t%E real, %U user, %S sys" --output=${f/.sql/.times} --append \
        ./tptp4X ${f/.sql/.translated} > ${f/.sql/.tptp}
    if grep -q equivalence_check ${f/.sql/.tptp} ; then
        echo "Running equivalence checks (vampire) for file ${f/.sql/.tptp}"
        /usr/bin/time --format="%C:\n\t%E real, %U user, %S sys" --output=${f/.sql/.times} --append \
            ./vampire4.2.2 ${f/.sql/.tptp} > ${f/.sql/.vampire}

        echo "Running equivalence checks (E) for file ${f/.sql/.tptp}"
        /usr/bin/time --format="%C:\n\t%E real, %U user, %S sys" --output=${f/.sql/.times} --append \
            ./eprover ${f/.sql/.tptp} > ${f/.sql/.e}
    fi
done
