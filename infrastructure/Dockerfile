FROM ubuntu:18.04

# Install mySQL client
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update && apt-get -qq -y install mysql-client

# By default, run shell-script
CMD /myapp/infrastructure/loaddata.sh
