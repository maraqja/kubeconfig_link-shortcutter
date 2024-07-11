<!--
НА докер драйвере не работает ингресс и NodePort, qemu самый стабильный на маке любой версии (да и на винде походу тоже), но без --network socket_vmnet не будет работать ингресс и NodePort
Для ингресса обязательно включить аддон и прописать домент в /etc/hosts
brew install socket_vmnet
brew tap homebrew/services
HOMEBREW=$(which brew) && sudo ${HOMEBREW} services start socket_vmnet
-->

minikube start --driver qemu --network socket_vmnet

kubectl get all

kubectl apply -f .

kubectl describe pods short-app

kubectl port-forward service/short-app-port 3000:3000
kubectl port-forward deployment/short-app-deployment 3000:80
kubectl port-forward pod/short-app-deployment-84d5999c6d-x4c79 3000:80
