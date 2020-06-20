provider "kubernetes" {
  config_context_cluster   = "minikube"
}
resource "kubernetes_pod" "pod1" {
  metadata {
    name = "kubepod1"
  }

  spec {
    container {
      image ="hello-world"
     name  = "web"
}
}
}
