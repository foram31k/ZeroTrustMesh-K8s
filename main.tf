provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
data "google_client_config" "provider" {}

provider "kubernetes" {
  host                   = "https://${google_container_cluster.primary.endpoint}"
  token                  = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth[0].cluster_ca_certificate)
}


data "google_project" "project" {
  project_id = var.project_id
}

data "google_container_engine_versions" "gke_version" {
  location       = var.region
  version_prefix = "1.27."
}
