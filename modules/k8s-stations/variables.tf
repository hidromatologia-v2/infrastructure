variable "kube_namespace" {
  description = "Namespace to deploy"
  type        = string
}

variable "replicas" {
  description = "Deployment initial replicas"
  type        = number
}

variable "memphis_username" {
  description = "Memphis username"
  type        = string
}

variable "memphis_password" {
  description = "Memphis password"
  type        = string
}

variable "memphis_station" {
  description = "Memphis station"
  type        = string
}

variable "memphis_host" {
  description = "Memphis host"
  type        = string
}

variable "postgres_dsn" {
  description = "Postgres connection DSN"
  type        = string
}
