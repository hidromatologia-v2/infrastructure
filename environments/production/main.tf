# Kubernetes
provider "kubernetes" {
  config_path = var.kubeconfig_path
}

provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.kube_namespace
  }
}

# Memphis
module "helm_memphis" {
  source           = "../../modules/helm-memphis"
  providers        = {
    helm = helm
  }

  # Variables
  cluster_enabled  = true
  kube_namespace   = var.kube_namespace
  cluster_replicas = var.memphis_cluster_replicas
  root_password    = var.memphis_root_password
  connection_token = var.memphis_connection_token
}

module "helm_redis" {
  source           = "../../modules/helm-redis"
  kube_namespace   = var.kube_namespace
  providers        = {
    helm = helm
  }

  # Variables
  cluster_nodes    = var.redis_cluster_nodes
  cluster_replicas = var.redis_cluster_replicas
  password         = var.redis_password
}
