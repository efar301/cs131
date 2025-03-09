#!/bin/bash

date=$(date "+%F-%T") # date for all files
gitignore=~/cs131/.gitignore

tail -n +2 ~/2019-01-h1.csv | awk -F, -v date="$date" -v gitig="$gitignore" '{
	filename = date "-" $1 ".csv";
	print $0 >> filename; # append entire line to file
	
	if (!(filename in seen)) { # if file hasnt been added to .gitignore
		print filename >> gitig; # append file to .gitignore
		seen[filename] = 1;
	}

}'

for file in "$HOME/cs131/ws4"/*.csv; do # for each csv file run wc and append to ws4.txt
	wc "$file" >> ws4.txt
done
