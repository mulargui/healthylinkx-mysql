
rem edit this if you cloned the repo in a different directory
minikube ssh "ln -s /c/Users/Mauricio/Documents/healthylinkx-mysql /home/docker/healthylinkx-mysql"

rem create the containers
minikube ssh "/home/docker/healthylinkx-mysql/docker/container.sh BUILD"

rem create new resources
kubectl create configmap dbconfig --from-file=%~dp0..\mysql.config/config-file.cnf
kubectl create -f %~dp0.\dbtier-service.yaml
kubectl create -f %~dp0.\dbtier-deployment.yaml

exit /B 0

