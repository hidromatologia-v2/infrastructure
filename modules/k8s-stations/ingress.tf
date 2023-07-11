#resource "kubernetes_ingress" "stations_ingress" {
#  metadata {
#    name      = "stations-ingress"
#    namespace = var.kube_namespace
#  }
#
#  spec {
#    rule {
#      http {
#        path {
#          path = "/api/stations/*"
#          backend {
#            service_name = kubernetes_service.stations_service.metadata[0].name
#            service_port = 5000
#          }
#        }
#      }
#    }
#  }
#}
