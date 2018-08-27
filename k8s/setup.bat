
rem cleanup previous instalations
kubectl delete services dbtier-service
kubectl delete deployments dbtier-deployment
kubectl delete configmap dbconfig

IF "%1"=="CLEAN" exit /B 0

rem create the containers
minikube ssh /c/Users/mulargui/cluster/healthylinkx-mysql/docker/container.sh BUILD

rem create new resources
kubectl create configmap dbconfig --from-file=%userprofile%/cluster/healthylinkx-mysql/mysql.config/config-file.cnf
kubectl create -f %userprofile%/cluster/healthylinkx-mysql/k8s/dbtier-service.yaml
kubectl create -f %userprofile%/cluster/healthylinkx-mysql/k8s/dbtier-deployment.yaml

exit /B 0

