variable "kube_namespace" {
  description = "Namespace to deploy"
  type        = string
}

variable "cluster_enabled" {
  description = "cluster.enabled"
  type        = bool
}

variable "cluster_replicas" {
    description = "cluster.replicas"
    type        = number
}

variable "root_password" {
    description = "memphis.creds.rootPwd"
    type        = string
}

variable "connection_token" {
  description = "memphis.creds.connectionToken"
  type        = string
  default     = "my-token" # TODO: FIXME: Change this to a randomly generated credentials
}
