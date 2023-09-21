#!/bin/bash

# Define the name for your KinD cluster
CLUSTER_NAME=ignite-dev

# Create a KinD cluster
kind create cluster --name=$CLUSTER_NAME

# Set the KUBECONFIG environment variable to use the newly created cluster
#export KUBECONFIG="$(kind get kubeconfig-path --name=$CLUSTER_NAME)"

# Verify the cluster is running

kubectl cluster-info --context kind-$CLUSTER_NAME

echo "KinD cluster $CLUSTER_NAME is now running."
