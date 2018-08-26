#!/usr/bin/env bash

#
# NOTE: There is a dependency in other repos using MySQLDB to link to MySQL container.
#

set -x
export DEBIAN_FRONTEND=noninteractive
# Absolute path to this repo
SCRIPT=$(readlink -f "$0")
export REPOPATH=$(dirname "$SCRIPT")/..

# what you can do
CLEAR=N
CLEANUP=N
BUILD=N
RUN=N
INTERACTIVE=N

# you can also set the flags using the command line
for var in "$@"
do
	if [ "CLEAR" == "$var" ]; then CLEAR=Y 
	fi
	if [ "CLEANUP" == "$var" ]; then CLEANUP=Y 
	fi
	if [ "BUILD" == "$var" ]; then BUILD=Y 
	fi
	if [ "RUN" == "$var" ]; then RUN=Y 
	fi
	if [ "INTERACTIVE" == "$var" ]; then INTERACTIVE=Y 
	fi
done

# clean up all containers
if [ "${CLEAR}" == "Y" ]; then
	sudo docker stop LOADDB MySQLDB
	sudo docker kill LOADDB MySQLDB
	sudo docker rm -f LOADDB MySQLDB
fi

# clean up all images
if [ "${CLEANUP}" == "Y" ]; then
	./$0 CLEAR
	sudo docker rmi -f sqlclient mysql
fi

# create imageS
if [ "${BUILD}" == "Y" ]; then
	./$0 CLEAR
	./$0 CLEANUP
	sudo docker pull mysql:5.5
	sudo docker build --rm=true -t sqlclient $REPOPATH/docker
fi

# run the container database in the background (including initial data load
if [ "${RUN}" == "Y" ]; then
	./$0 CLEAR
	if [ "$(sudo docker images | grep sqlclient)" == "" ]; then
		./$0 BUILD
	fi
	sudo docker run -d --name MySQLDB -p 3306:3306 -e MYSQL_ROOT_PASSWORD=awsawsdb -v $REPOPATH/mysql.config:/etc/mysql/conf.d mysql:5.5 --secure-file-priv=""
	#load initial dataset
	sudo docker run -d --rm=true --name LOADDB -v $REPOPATH/mysql.init:/myapp --link MySQLDB:MySQLDB sqlclient 
	#give extra time to load the data
	while :
	do
		RUNNING=$(sudo docker inspect --format="{{.State.Running}}" LOADDB 2> /dev/null)
		if [ "$RUNNING" != "true" ]; then
			echo ... data load completed
			break
		fi
		echo waiting to populate the database ...
		sleep 5
	done
fi

# interactive prompt to the database
if [ "${INTERACTIVE}" == "Y" ]; then
	#./$0 CLEAR
	if [ "$(sudo docker images | grep sqlclient)" == "" ]; then
		./$0 BUILD
	fi
	sudo docker run -ti -v $REPOPATH:/myapp --name LOADDB --link MySQLDB:MySQLDB sqlclient /bin/bash
fi
