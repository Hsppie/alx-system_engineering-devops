#!/usr/bin/env bash

# backup and compress my databases
mysqldump --all-databases -u root --password="$1" > backup.sq
day=$(date +"%d")
month=$(date +"%m")
year=$(date +"%Y")
file_name="$day-$month-$year.tar.gz"
tar -czvf "$file_name" backup.sql

