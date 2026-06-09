resource "helm_release" "nginx" {
  name       = "myapp"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "replicaCount"
    value = "2"
  }
}
