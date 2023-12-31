# ignite.dev

## Task instructions

Setup a kubernetes cluster using kind

1. Install kind 

```
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64

chmod +x ./kind

sudo mv ./kind /usr/local/bin/kind
```

![Alt text](images/image.png)

2. Install Docker Engine
[Install](https://docs.docker.com/engine/install/ubuntu/)

3. Install kubectl
[Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

Write a simple bash script that deploys a kind cluster locally

1. Create bash script and deploy it

![Alt text](images/image1.png)

Download the kubeconfig for the cluster and store in a safe place, we will use it much later in the next steps

`kubectl config view --minify --raw > kubeconfig.yml`

## Deploy a sample Node.js app using terraform

When kind is up and running, dockerize a simple hello world express and deploy to dockerhub

![Alt text](images/image2.png)

![Alt text](images/image3.png)

![Alt text](images/image4.png)

![Alt text](images/image5.png)

- Deploy the docker container using terraform

![Alt text](images/image6.png)

- create a kubernetes deployment manifest to deploy to deploy the Node.js to the kind cluster but don't apply it yet

- Using the kubectl terraform provider, write a terraform code to deploy the kubectl manifest to the kind cluster

![Alt text](images/image7.png)

![Alt text](images/image8.png)

## Bonus

Using the kube-prometheus stack, using terraform helm provider, setup monitoring and observability for the prometheus cluster.

- Install Helm

```
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```

