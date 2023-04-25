# SHELL SCRIPT TO DELETE ALL THE DEPLOYMENTS, SERVICES, SECRETS, AND CONFIGMAPS

kubectl delete deployment --all
kubectl delete service --all
kubectl delete secret mongodb-secret
kubectl delete configmap mongodb-config
