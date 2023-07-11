resource "helm_release" "memphis" {
  name       = "memphis"
  repository = "https://k8s.memphis.dev/charts/"
  chart      = "memphis"
  namespace  = var.kube_namespace

  timeout = 1200  # equivalent of the --wait flag; adjust as necessary

  # Variables
  set {
    name  = "cluster.enabled"
    value = tostring(var.cluster_enabled)
  }
  set {
    name  = "cluster.replicas"
    value = tostring(var.cluster_replicas)
  }
  set {
    name  = "memphis.creds.rootPwd"
    value = var.root_password
  }
  set {
    name  = "memphis.creds.connectionToken"
    value = var.connection_token
  }
}
