#!/bin/bash

cd tests

OUTPUT_DIR="output"
REPORT="${OUTPUT_DIR}/report.txt"
TIMEOUT=10
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
            eprover_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}_eprover.txt"
            log_file="${OUTPUT_DIR}/${query1/.sql/}_${query2/.sql}.log"


            echo -en "${query1/.sql/} -- ${query2/.sql/}" | tee -a "${REPORT}"
            echo -n "       "

            # run translation
            python ../translate.py database.schema "${query1}" "${query2}" > "${raw_file}" 2> "${log_file}"
            CONJECTURE=$? # 1 if conjecture was generated, 0 otherwise

            # run tptp4X
            ../tptp4X "${raw_file}" > "${tptp_file}" 2>> "${log_file}"
            if [ ! -s "${tptp_file}" ] # output file is empty
            then
                echo "TPTPX4: NO OUTPUT" | tee -a "${REPORT}"
                continue
            elif grep "^ERROR" ${tptp_file} &> /dev/null
            then
                echo -e "TPTP4X: ERROR" | tee -a "${REPORT}"
                continue
            fi
            
            if [ $CONJECTURE -ne 0 ]
            then
                echo -e "\033[0;31mNOT EQUIVALENT\033[0m (numbers of columns do not match)" | tee -a "${REPORT}"
                continue
            fi

            # run vampire4.2.2
            echo -n "VAMPIRE: " | tee -a "${REPORT}"
            ../provers/vampire/vampire4.2.2 --time_limit "${TIMEOUT}s" "${tptp_file}" > "${vampire_file}" 2>> "${log_file}"
            if [ ! -s "${vampire_file}" ] # output file is empty
            then
                echo -en "\033[0;33mNO OUPUT\033[0m       " | tee -a "${REPORT}"
            elif grep "^% Time limit reached!" ${vampire_file} &> /dev/null
            then
                echo -en "\033[0;33mTIMEOUT\033[0m        " | tee -a "${REPORT}"
            elif grep "^% Refutation found. Thanks to Tanya!" ${vampire_file} &> /dev/null
            then
                echo -en "\033[0;32mEQUIVALENT\033[0m     " | tee -a "${REPORT}"
            elif grep "^% Refutation not found" ${vampire_file} &> /dev/null
            then
                echo -en "\033[0;33mPROOF NOT FOUND\033[0m" | tee -a "${REPORT}"
            elif grep "^Satisfiable" ${vampire_file} &> /dev/null
            then
                echo -en "\033[0;31mNOT EQUIVALENT\033[0m " | tee -a "${REPORT}"
            else
                echo -en "\033[0;33mUNKNOWN\033[0m        " | tee -a "${REPORT}"
            fi

            echo -n "       "

            # run eprover
            echo -n "EPROVER: " | tee -a "${REPORT}"
            ../provers/E/eprover --auto --cpu-limit=${TIMEOUT} "${tptp_file}" > "${eprover_file}" 2>> "${log_file}"
            if [ ! -s "${eprover_file}" ] # output file is empty
            then
                echo -en "\033[0;33mNO OUPUT\033[0m       " | tee -a "${REPORT}"
            elif grep "^Problem" ${eprover_file} &> /dev/null
            then
                echo -en "\033[0;33mERROR\033[0m          " | tee -a "${REPORT}"
            elif grep "^# Failure: Resource limit exceeded (time)" ${eprover_file} &> /dev/null
            then
                echo -en "\033[0;33mTIMEOUT\033[0m        " | tee -a "${REPORT}"
            elif grep "^# Proof found!" ${eprover_file} &> /dev/null
            then
                echo -en "\033[0;32mEQUIVALENT\033[0m     " | tee -a "${REPORT}"
            elif grep "^# No proof found!" ${eprover_file} &> /dev/null
            then
                echo -en "\033[0;33mPROOF NOT FOUND\033[0m" | tee -a "${REPORT}"
            else
                echo -en "\033[0;33mUNKNOWN\033[0m " | tee -a "${REPORT}"
            fi

            echo
        fi
    done
done
