resource "kubernetes_deployment" "stations_deployment" {
  timeouts {
    create = "3m"
    update = "3m"
    delete = "3m"
  }
  metadata {
    name = "stations-deployment"
    labels = {
      app = "stations"
    }
    namespace = var.kube_namespace
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = "stations"
      }
    }

    template {
      metadata {
        labels = {
          app = "stations"
        }
      }

      spec {
        container {
          image = "ghcr.io/hidromatologia-v2/stations:latest"
          name  = "stations"

          env {
            name  = "MEMPHIS_STATION"
            value = var.memphis_station
          }

          env {
            name = "MEMPHIS_PRODUCER"
            value_from {
              field_ref {
                field_path = "metadata.name"
              }
            }
          }

          env {
            name  = "MEMPHIS_HOST"
            value = var.memphis_host
          }

          env {
            name  = "MEMPHIS_USERNAME"
            value = var.memphis_username
          }

          env {
            name  = "MEMPHIS_PASSWORD"
            value = var.memphis_password
          }

          # env {
          #   name  = "MEMPHIS_CONN_TOKEN"
          #   value = var.memphis_connection_token
          # }

          env {
            name  = "POSTGRES_DSN"
            value = var.postgres_dsn
          }

          port {
            container_port = 5000
          }
        }
      }
    }
  }
}
