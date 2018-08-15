#!/usr/bin/env bash

sqlhost=$( getent hosts "MySQLDB" | awk '{print $1}' )

if [ -z "$sqlhost" ]; then
	sqlhost="127.0.0.1"
fi 

#wait till the server is ready
for i in {1..6}; do # timeout in 30 seconds
   if mysqladmin ping -h"$sqlhost" --silent; then
      break
  fi
  sleep 5
done

if mysql -h $sqlhost -u root -pawsawsdb -e "CREATE DATABASE healthylinkx"; then
	mysql -h $sqlhost -u root -pawsawsdb healthylinkx < /myapp/healthylinkxdump.sql
fi
