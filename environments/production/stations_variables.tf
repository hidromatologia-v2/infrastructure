variable "stations_replicas" {
  description = "Replicas to initialy deploy"
  type        = string
  default     = 1
}

locals {
  stations_memphis_host     = "memphis"
  stations_memphis_station  = "alerts"
  stations_memphis_username = "root"
  stations_memphis_password = var.memphis_root_password
  stations_postgres_dsn     = "host=postgresql-ha-pgpool user=${var.postgres_username} password=${var.postgres_password} dbname=${var.postgres_database} port=5432 sslmode=disable"
}
