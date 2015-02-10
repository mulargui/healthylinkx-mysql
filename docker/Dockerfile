FROM ubuntu:latest

# Install mySQL client
RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update && apt-get -qq -y install mysql-client

# By default, run shell-script
CMD /bin/bash /myapp/docker/run.sh

