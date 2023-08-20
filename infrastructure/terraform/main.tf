module "gke" {
  source            = "github.com/terraform-google-modules/terraform-google-kubernetes-engine//modules/private-cluster?ref=v27.0.0"
  project_id        = var.project_id
  name              = var.name
  description       = var.description
  region            = var.region
  zones             = var.zones
  network           = module.vpc.network_name
  subnetwork        = module.vpc.network_name
  ip_range_pods     = var.ip_range_pods
  ip_range_services = var.ip_range_services
  node_pools        = var.node_pools
}

module "vpc" {
  source                  = "github.com/terraform-google-modules/terraform-google-network//modules/vpc?ref=v7.3.0"
  project_id              = var.project_id
  network_name            = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
}