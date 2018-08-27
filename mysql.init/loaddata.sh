#!/usr/bin/env bash

# docker: containers are linked
# k8s: always 127.0.0.1 as they are in the same pod
sqlhost=$( getent hosts "MySQLDB" | awk '{print $1}' )
if [ -z "$sqlhost" ]; then
	sqlhost="127.0.0.1"
fi 

#wait till the server is ready
for i in {1..6}; do # timeout in 30 seconds
   if mysqladmin ping -h"$sqlhost" --silent; then
	echo ...ready
      break
  fi
  echo ...waiting
  sleep 5
done

if mysql -h $sqlhost -u root -pawsawsdb -e "CREATE DATABASE healthylinkx"; then
	mysql -h $sqlhost -u root -pawsawsdb healthylinkx < /myapp/healthylinkxdump.sql
fi
echo done!

#k8s: as a shortcut we keep the container dormant
#we need to redesign this process to work elegantly
if [ "${KUBERNETES_PORT}" != "" ]; then
	echo we are using k8s!
	while true; do sleep 3600; done
fi

exit 0