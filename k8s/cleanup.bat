
rem cleanup resources
kubectl delete services dbtier-service
kubectl delete deployments dbtier-deployment
kubectl delete configmap dbconfig

rem cleanup the container image
minikube ssh "/home/docker/healthylinkx-mysql/docker/container.sh CLEANUP"

rem remove link
minikube ssh "rm /home/docker/healthylinkx-mysql"

exit /B 0

