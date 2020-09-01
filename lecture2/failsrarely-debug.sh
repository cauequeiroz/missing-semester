#!/usr/bin/env bash

counter=0

while true; do
	counter=$((counter+1))

	./failsrarely.sh &> ./output.txt

	if [[ $? -eq 1 ]]; then
		cat ./output.txt

		echo ""
		echo "Took $counter runs for the script to fail."

		break
	fi
done

