# SHELL SCRIPT TO BUILD THE APP

# Check if minikube is running
if [[ $(minikube status | grep -c "Running") -eq 0 ]]; then
  # Start minikube
  minikube start
fi

# Delete pre-existing deployments, services, secrets, and configmaps
source delete.sh

# build the docker image
eval $(minikube -p minikube docker-env)
docker build -t flask-app-image .

# create a deployment
kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml
kubectl apply -f services.yaml
kubectl apply -f deployments.yaml

