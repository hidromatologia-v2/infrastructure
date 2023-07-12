# Memphis
module "helm_memphis" {
  source         = "../../modules/helm-memphis"
  kube_namespace = var.kube_namespace

  # Variables
  root_password    = var.memphis_root_password
  connection_token = var.memphis_connection_token
}

# Redis
module "helm_redis" {
  source         = "../../modules/helm-redis"
  kube_namespace = var.kube_namespace

  # Variables
  cluster_nodes    = var.redis_cluster_nodes
  cluster_replicas = var.redis_cluster_replicas
  password         = var.redis_password
}

# Postgres
module "helm_postgres" {
  source         = "../../modules/helm-postgres"
  kube_namespace = var.kube_namespace

  # Variables
  username      = var.postgres_username
  password      = var.postgres_password
  database      = var.postgres_database
  replica_count = var.postgres_replica_count
}

# Stations service
module "k8s_stations" {
  source         = "../../modules/k8s-stations"
  kube_namespace = var.kube_namespace

  # Variables
  replicas         = var.stations_replicas
  memphis_station  = local.stations_memphis_station
  memphis_host     = local.stations_memphis_host
  memphis_username = local.stations_memphis_username
  memphis_password = local.stations_memphis_password
  postgres_dsn     = local.stations_postgres_dsn
}
