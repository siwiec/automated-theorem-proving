#!/bin/bash

cd tests
for query1 in *.sql; do
	for query2 in *.sql; do
		if [[ "${query1}" < "${query2}" ]]; then
			output="output_${query1/.sql/}_${query2/.sql}.tptp"
			echo "Creating ${output}..."
			python3 ../translate.py database.schema "${query1}" "${query2}" > "${output}"
			../tptp4X "${output}" > ${output/output/tptp4X}
			echo "DONE"
			
		fi
	done
done

