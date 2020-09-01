#!/usr/bin/env bash

counter=0

while true; do
	counter=$((counter+1))

	# runs program and saves STDOUT and STDERR to file
	./failsrarely.sh &> ./output.txt
	
	# check if the last command fails
	if [[ $? -eq 1 ]]; then
		cat ./output.txt

		echo ""
		echo "Took $counter runs for the script to fail."

		break
	fi
done

