#!/bin/bash


oldest_date=9999-12-31

for i in "$@"
do
	file_date=`find/ -name i -printf '%T+\n' 2>/dev/null`
	if [[ "$oldest_date" > "$file_date" ]] ;
	then
	oldest_date="$file_date"
		oldest_name="$i"
	fi
done
echo "$oldest_name"


