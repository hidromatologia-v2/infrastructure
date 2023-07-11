variable "kube_namespace" {
  description = "Namespace to deploy"
  type        = string
}

# Redis config
variable "cluster_nodes" {
  description = "cluster.nodes"
  type        = number
}

variable "cluster_replicas" {
  description = "cluster.replicas"
  type        = number
}

variable "password" {
  description = "password"
  type        = string
}
