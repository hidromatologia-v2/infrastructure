variable "kube_namespace" {
  description = "Namespace to deploy"
  type        = string
}

variable "username" {
    description = "postgresql.username"
    type        = string
}

variable "password" {
    description = "postgresql.password"
    type        = string
}

variable "replica_count" {
    description = "postgresql.replicaCount"
    type        = number
}
