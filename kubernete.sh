#!/bin/bash
##delete all services,pods
kubectl delete --force -f kubernete.yaml
kubectl create -f kubernete.yaml
