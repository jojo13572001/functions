#!/bin/bash
##delete all services,pods
kubectl delete --force -f kubernete.yaml
sleep 5 
kubectl create -f kubernete.yaml
sleep 5
podname="$(kubectl get --no-headers=true pods -o name | awk -F "/" '{print $2}')"
kubectl port-forward ${podname} 8080:8080
