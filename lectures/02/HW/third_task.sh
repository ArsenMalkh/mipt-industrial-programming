#!/bin/bash

directory=$1

cd "$directory" || exit

for file in $(ls | grep .log)
do
  echo "$file: $(cat "$file" | jq .uid | sort -n | uniq -c | sort -n -k 1 | tail -n 1 | awk '{print $2}')" 
done

