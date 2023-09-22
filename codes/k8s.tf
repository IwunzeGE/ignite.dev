terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

provider "kubectl" {
  config_path = "/home/rockchip/.kube/config"
}

resource "kubectl_manifest" "express_app" {
  yaml_body = <<YAML
apiVersion: apps/v1
kind: Deployment
metadata:
  name: express-app-deployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: express-app
  template:
    metadata:
      labels:
        app: express-app
    spec:
      containers:
        - name: node-app
          image: rockchip/node:v1
          ports:
            - containerPort: 3000
YAML
}