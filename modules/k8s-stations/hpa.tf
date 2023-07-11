resource "kubernetes_horizontal_pod_autoscaler" "stations-hpa" {
  metadata {
    name      = "stations-hpa"
    namespace = var.kube_namespace
  }
  spec {
    scale_target_ref {
      api_version = "apps/v1"
      kind        = "Deployment"
      name        = "stations-deployment"
    }
    min_replicas                      = 1
    max_replicas                      = 50
    target_cpu_utilization_percentage = 50
  }
}
