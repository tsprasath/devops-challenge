eval $(minikube docker-env)

docker build -t tsprasath91/ac-a  ./acceleration-a
docker build -t tsprasath91/ac-calc ./acceleration-calc
docker build -t tsprasath91/ac-dv ./acceleration-dv

docker push tsprasath91/ac-a
docker push tsprasath91/ac-calc
docker push tsprasath91/ac-dv

minikube addons enable ingress

helm install acceleration-a ./helm/acceleration-a
helm install acceleration-dv ./helm/acceleration-dv
helm install acceleration-calc ./helm/acceleration-calc



DOCKER_REGISTRY_SERVER=docker.io
DOCKER_USER=xxxx
DOCKER_EMAIL=xxxx
DOCKER_PASSWORD=xxx

kubectl create secret docker-registry myregistrykey \
  --docker-server=$DOCKER_REGISTRY_SERVER \
  --docker-username=$DOCKER_USER \
  --docker-password=$DOCKER_PASSWORD \
  --docker-email=$DOCKER_EMAIL