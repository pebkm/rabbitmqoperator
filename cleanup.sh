#!/bin/bash

kubectl delete -f definition.yaml

kubectl delete -f "https://github.com/rabbitmq/cluster-operator/releases/latest/download/cluster-operator.yml"

kubectl delete namespace rabbitmq-worker