variable "redis_password" {
  description = "password"
  type        = string
}

variable "redis_cluster_nodes" {
  description = "cluster.nodes"
  type        = number
  default     = 3
}

variable "redis_cluster_replicas" {
  description = "cluster.replicas"
  type        = number
  default     = 1
}
