resource "helm_release" "redis-cluster" {
  name       = "redis-cluster"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis-cluster"
  namespace  = var.kube_namespace

  # Variables
  set {
    name  = "cluster.nodes"
    value = var.cluster_nodes
  }
  set {
    name  = "cluster.replicas"
    value = var.cluster_replicas
  }
  set {
    name  = "usePassword"
    value = "true"
  }
  set {
    name  = "password"
    value = var.password
  }
}
