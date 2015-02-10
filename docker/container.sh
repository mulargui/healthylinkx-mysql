sudo docker stop loaddb
sudo docker rm loaddb
sudo docker run -ti -v /vagrant/apps/healthylinkx-mysql:/myapp --name loaddb --link MySQLDB:MySQLDB sqlclient /bin/bash