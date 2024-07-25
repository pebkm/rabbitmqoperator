#!/bin/bash
kubectl create namespace rabbitmq-worker

kubectl apply -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"

kubectl apply -f definition.yaml
#Portforward not used but using LoadBlancer ip
#kubectl port-forward definition-server-0 5672:5672

#kubectl get all -l app.kubernetes.io/name=rabbitmqcluster -n rabbitmq-worker

# vhost and guest/admin user created via localhost:15672 using below creds
# kubectl -n rabbitmq-worker get secret rabbitmqcluster-default-user -o jsonpath="{.data.username}" | base64 --decode
# kubectl -n rabbitmq-worker get secret rabbitmqcluster-default-user -o jsonpath="{.data.password}" | base64 --decode