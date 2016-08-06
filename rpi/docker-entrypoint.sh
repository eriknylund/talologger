#!/bin/sh

# taloLogger does not create the database, only tables
# We need to wait until MySQL container is up and running before we can create the database

dockerize -wait tcp://db:3306 -timeout 120s

mysql -u root -proot -h db -e 'CREATE DATABASE IF NOT EXISTS talo;'

# Use provided config file mounted as volume instead of the default config

python /root/taloLogger/taloLogger.py -f /root/taloLogger.conf
