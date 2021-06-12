#!/bin/bash

cd tests

OUTPUT_DIR="output"
rm -rf "${OUTPUT_DIR}"
mkdir -p "${OUTPUT_DIR}"

# rm *.tptp
# rm *.txt
# rm *.log

for query in *.sql; do
    echo -e "\033[0;31m${query}\033[0m"
    cat "${query}"
    echo
done;


echo -e "\033[0;31m#############################################\033[0m"


#for query1 in query10.sql; do
for query1 in *.sql; do
    for query2 in *.sql; do
        if [[ "${query1}" < "${query2}" ]]; then

            raw_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_raw.tptp"
            tptp_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_tptp4X.tptp"
            vampire_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_vampire.txt"
            log_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}.log"


            echo "${query1/.sql/} ${query2/.sql/}"

            # run translation
            python ../translate.py database.schema "${query1}" "${query2}" > "${raw_file}" 2> "${log_file}"

            # run tptp4X
            ../tptp4X "${raw_file}" > "${tptp_file}" 2>> "${log_file}"
            if [ ! -f "${tptp_file}" ]
            then
                echo "tptpX4 failed" | tee -a "${log_file}"
                continue
            fi
            

            # run vampire4.2.2
            ../provers/vampire/vampire4.2.2 "${tptp_file}" > "${vampire_file}" 2>> "${log_file}"
            if [ ! -f "${vampire_file}" ]
            then
                echo "vampire4.2.2 failed" | tee -a "${log_file}"
                continue
            fi
        fi
    done
done

RESULTS_FILE="${OUTPUT_DIR}/results.txt"
echo -e "\033[0;31mPairs of equivalent queries:\033[0m" > "$RESULTS_FILE"
grep -nR "Refutation found" "${OUTPUT_DIR}" | \grep -o query.._query.. | sed "s/_/ /g" | sort | tee -a "$RESULTS_FILE"

