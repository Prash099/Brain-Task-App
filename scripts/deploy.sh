#!/bin/bash
set -e

echo "Deploying to EKS..."
aws eks update-kubeconfig --region ap-south-1 --name brain-task-cluster
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

