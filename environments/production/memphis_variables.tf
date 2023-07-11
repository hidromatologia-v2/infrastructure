variable "memphis_root_password" {
  description = "memphis.creds.rootPwd"
  type        = string
}

variable "memphis_connection_token" {
  description = "memphis.creds.connectionToken"
  type        = string
}
variable "memphis_cluster_replicas" {
  description = "cluster.replicas"
  type        = number
  default     = 1
}
