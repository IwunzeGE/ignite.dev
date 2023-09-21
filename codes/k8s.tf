provider "kubectl" {
  config_path = "~/.kube/config"
}

resource "kubectl_manifest" "node_app" {
  manifest_path = "ignite.dev/codes/express-deployment.yml"  # Path to your manifest file
}
