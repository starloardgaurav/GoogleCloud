#!/bin/bash
set -e

echo "=============================================="
echo " GSP053 - Managing Deployments Using GKE "
echo "=============================================="

ZONE=us-central1-a
CLUSTER_NAME=bootcamp

echo "[1/9] Setting compute zone"
gcloud config set compute/zone $ZONE

echo "[2/9] Downloading lab Kubernetes files"
gcloud storage cp -r gs://spls/gsp053/kubernetes .
cd kubernetes

echo "[3/9] Creating GKE cluster"
gcloud container clusters create $CLUSTER_NAME `
  --machine-type e2-small `
  --num-nodes 3 `
  --scopes "https://www.googleapis.com/auth/projecthosting,storage-rw"

echo "[4/9] Verifying cluster"
kubectl get nodes

echo "[5/9] Creating BLUE deployment (v1.0.0)"
kubectl create -f deployments/fortune-app-blue.yaml

echo "[6/9] Creating Service"
kubectl create -f services/fortune-app.yaml

echo "[7/9] Scaling deployment"
kubectl scale deployment fortune-app-blue --replicas=5
kubectl scale deployment fortune-app-blue --replicas=3

echo "[8/9] Creating CANARY deployment"
kubectl create -f deployments/fortune-app-canary.yaml

echo "[9/9] Blue-Green deployment switch"
kubectl apply -f services/fortune-app-blue-service.yaml
kubectl create -f deployments/fortune-app-green.yaml
kubectl apply -f services/fortune-app-green-service.yaml

echo "=============================================="
echo " Base automation completed successfully "
echo "=============================================="
