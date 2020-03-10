#!/bin/bash

sleep 10
ls -lart sql_files

export PGPASSWORD=${DB_PASSWORD}
psql -h ${DB_HOST} -U ${DB_USER} -a -w -f ./sql_files/create.sql

