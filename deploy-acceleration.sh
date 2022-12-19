#!/bin/bash

set -e

dockerbuild() {
eval $(minikube docker-env)
echo "[INFO]: Logged into the minikube docker environment";
docker build -t acceleration-a  ./acceleration-a
docker build -t acceleration-calc ./acceleration-calc
docker build -t acceleration-dv ./acceleration-dv
echo "[Success]: Acceleration images are  builded successfully";
builddocker
}

builddocker(){
minikube addons enable ingress
echo "[INFO]: Starting the Acceleration Application";
helm install acceleration-helm ./deploy-acceleration-helm
sleep 5s;
echo "[Success]: Acceleration App Deployed";
printf "\n\n"
echo "[Success]: Browse http://`minikube ip`/calc?vf=200&vi=5&t=123"
printf "\n\n"
}
dockerbuild
