resource "helm_release" "nginx" {
  name       = "myapp"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"

  values = [
    file("${path.module}/values.yaml")
  ]
}
