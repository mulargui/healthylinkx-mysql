#!/usr/bin/env bash

sqlhost=$( getent hosts "MySQLDB" | awk '{print $1}' )

if [ -z "$sqlhost" ]; then
	sqlhost="127.0.0.1"
fi 

if mysql -h $sqlhost -u root -pawsawsdb -e "CREATE DATABASE healthylinkx"; then
	mysql -h $sqlhost -u root -pawsawsdb healthylinkx < /myapp/healthylinkxdump.sql
fi

