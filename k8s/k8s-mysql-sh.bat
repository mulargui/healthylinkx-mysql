
kubectl exec -it dbtier-pod -- /bin/bash
kubectl run my-shell --rm -i --tty --image sqlclient --image-pull-policy Never -- bash
kubectl attach dbtier-test -c sqlclient -i -t
