# Kubernetes cluster
variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
}

variable "kube_namespace" {
  description = "Namespace to deploy"
  type        = string
  default     = "hidromatologia-production"
}

# Memphis

variable "memphis_cluster_replicas" {
    description = "cluster.replicas"
    type        = number
    default     = 1
}

variable "memphis_root_password" {
    description = "memphis.creds.rootPwd"
    type        = string
    default     = "password" # TODO: FIXME: Change this to a randomly generated credentials
}

variable "memphis_connection_token" {
  description = "memphis.creds.connectionToken"
  type        = string
  default     = "my-token" # TODO: FIXME: Change this to a randomly generated credentials
}

# Redis

variable "redis_cluster_nodes" {
    description = "cluster.nodes"
    type        = number
    default     = 6
}

variable "redis_cluster_replicas" {
    description = "cluster.replicas"
    type        = number
    default     = 1
}

variable "redis_password" {
  description = "password"
  type        = string
  default     = "password" # TODO: FIXME: Change this to a randomly generated credentials
}
