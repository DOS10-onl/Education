#!/bin/bash

# Script for backup databases from MySQL and PostgerSQL

# Data for MySQL and PostgreSQL dump
mysql_dump="/opt/mysql_backup"      # path to mysql backup
posql_dump="/opt/postgresql_backup" # path to PosgreSQL backup
user1="User1"                       # Owner mysql and postgresql DB
user2="User3"                       # Owner mysql and postgresql DB
date=$(date +%Y-%m-%d-%H-%M)        # Current date
PGPASSWORD="1234567"                # Password for postgresql
MYSQL_PWD="1234567"		    # Password for mysql
export PGPASSWORD		    # Replace default pass in psql variable environment
export MYSQL_PWD		    # Replace default pass in mysql variable environment

# Start to backup mysql
mysqldump --force --opt --user=$user1 MySQL_1 > "$mysql_dump"/MySQL1_"$date".sql
mysqldump --force --opt --user=$user2 MySQL_2 > "$mysql_dump"/MySQL2_"$date".sql

# Start to backup postgreSQL
pg_dump -h localhost -U $user1 Transport > "$posql_dump"/Transport_"$date".sql
pg_dump -h localhost -U $user2 Cars > "$posql_dump"/Cars_"$date".sql

unset PGPASSWORD		    # Reset pass to default in psql variable environment
unset MYSQL_PWD			    # Reset pass to default in mysql variable environment
