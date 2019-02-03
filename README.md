healthylinkx-mysql
==================
Healthylinkx is a 3 tiers app: ux, api and datastore. Healthylinkx creates and runs a container for each tier.

This repo implements the datastore tier. It is a container running MySQL. There is also a companion container that loads the database with a data set obtained from open data sources.

Directories:\
Doc. Documents related to the source of the data and transformations done to create the data set.\
vm. files to setup a vm using vagrant and virtualbox. move the vagrantfile to the root of the repo.\
docker. how to create and manage the container.\
k8s. templates to create the service in kubernetes. tested with minikube. Edit setup.bat to point to the directory where you cloned the repo\
mysql.config. config file pased to the datastore container when initialized.\
mysql.init. data set loaded in the data store. you need to unzip the file with the data (due to its size)\

You can see how I set up minikube in the repo http://github.com/mulargui/healthylinkx-k8s \

Note: Keep in mind if you clone this repo in Windows that shellscripts' line breaks will be adjusted to Windows and will not work in minikube. You will need to edit the files.
