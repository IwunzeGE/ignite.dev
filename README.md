# ignite.dev

## Task instructions

Setup a kubernetes cluster using kind
Write a simple bash script that deploys a kind cluster locally
Download the kubeconfig for the cluster and store in a safe place, we will use it much later in the next steps

## Deploy a sample Node.js app using terraform

When kind is up and running, dockerize a simple hello world express and deploy to dockerhub
create a kubernetes deployment manifest to deploy to deploy the Node.js to the kind cluste but don't apply it yet
using the kubectl terraform provider, write a terraform code to deploy the kubectl manifest to the kind cluster

## Bonus
Using the kube-prometheus stack, using terraform helm provider, setup monitoring and observability for the prometheus cluster.
