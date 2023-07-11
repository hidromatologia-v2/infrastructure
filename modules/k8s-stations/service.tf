resource "kubernetes_service" "stations_service" {
  metadata {
    name      = "stations-service"
    namespace = var.kube_namespace
  }

  spec {
    selector = {
      app = kubernetes_deployment.stations_deployment.metadata[0].labels.app
    }

    port {
      port        = 5000
      target_port = 5000
    }

    type = "ClusterIP"
  }
}
