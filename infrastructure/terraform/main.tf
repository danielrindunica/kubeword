module "gke" {
  source            = "github.com/terraform-google-modules/terraform-google-kubernetes-engine//modules/private-cluster?ref=v27.0.0"
  project_id        = var.project_id
  name              = var.name
  description       = var.description
  region            = var.region
  zones             = var.zones
  network           = module.vpc.network_name
  subnetwork        = var.subnetwork[0]
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

module "firewall_rules" {
  source        = "github.com/terraform-google-modules/terraform-google-network//modules/firewall-rules?ref=v7.3.0"
  project_id    = var.project_id
  network_name  = var.network_name
  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules

}