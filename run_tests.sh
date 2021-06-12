#!/bin/bash

cd tests

OUTPUT_DIR="output"
REPORT="${OUTPUT_DIR}/report.txt"
rm -rf "${OUTPUT_DIR}"
mkdir -p "${OUTPUT_DIR}"
touch "${REPORT}"



# rm *.tptp
# rm *.txt
# rm *.log

for query in *.sql; do
    echo -e "\033[0;31m${query}\033[0m" | tee -a "${REPORT}"
    cat "${query}" | tee -a "${REPORT}"
    echo | tee -a "${REPORT}"
done;


echo -e "\033[0;31m#############################################\033[0m" | tee -a "${REPORT}"


#for query1 in query20.sql; do
for query1 in *.sql; do
    for query2 in *.sql; do
        if [[ "${query1}" < "${query2}" ]]; then

            raw_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_raw.tptp"
            tptp_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_tptp4X.tptp"
            vampire_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_vampire.txt"
            log_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}.log"


            echo -n "${query1/.sql/} ${query2/.sql/} -- " | tee -a "${REPORT}"

            # run translation
            python ../translate.py database.schema "${query1}" "${query2}" > "${raw_file}" 2> "${log_file}"
            CONJECTURE=$?

            # run tptp4X
            ../tptp4X "${raw_file}" > "${tptp_file}" 2>> "${log_file}"
            if [ ! -f "${tptp_file}" ]
            then
                echo "TPTPX4 FAILED" | tee -a "${REPORT}"
                continue
            fi
            
            if [ $CONJECTURE -ne 0 ]
            then
                echo -e "\033[0;31mNOT EQUIVALENT\033[0m (numbers of columns do not match)" | tee -a "${REPORT}"
                continue
            fi

            # run vampire4.2.2
            ../provers/vampire/vampire4.2.2 "${tptp_file}" > "${vampire_file}" 2>> "${log_file}"
            if [ ! -f "${vampire_file}" ]
            then
                echo -e "\033[0;33mVAMPIRE FAILED; NO OUPUT FILE\033[0m" | tee -a "${REPORT}"
                continue
            fi

            if grep "Time limit reached" ${vampire_file} &> /dev/null
            then
                echo -e "\033[0;33mVAMPIRE TIMEOUT\033[0m" | tee -a "${REPORT}"
                continue
            fi

            if grep "Refutation found" ${vampire_file} &> /dev/null
            then
                echo -e "\033[0;32mEQUIVALENT\033[0m" | tee -a "${REPORT}"
                continue
            fi

            if grep "Refutation not found" ${vampire_file} &> /dev/null
            then
                echo -e "\033[0;33mPROOF NOT FOUND\033[0m" | tee -a "${REPORT}"
                continue
            fi
            echo -e "\033[0;31mNOT EQUIVALENT\033[0m" | tee -a "${REPORT}"
        fi
    done
done
