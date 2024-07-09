minikube start --vm-driver=qemu

kubectl get all

kubectl apply -f .

kubectl describe pods short-app

kubectl port-forward service/short-app-port 3000:3000 
kubectl port-forward deployment/short-app-deployment 3000:80 
kubectl port-forward pod/short-app-deployment-84d5999c6d-x4c79 3000:80 