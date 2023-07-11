variable "kube_namespace" {
  description = "Namespace to deploy"
  type        = string
}

variable "root_password" {
  description = "memphis.creds.rootPwd"
  type        = string
}

variable "connection_token" {
  description = "memphis.creds.connectionToken"
  type        = string
}
