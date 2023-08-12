module "gke" {
  source            = "github.com/terraform-google-modules/terraform-google-kubernetes-engine//modules/private-cluster?ref=v27.0.0"
  project_id        = var.project_id
  name              = var.name
  description       = var.description
  region            = var.region
  zones             = var.zones
  network           = var.network
  subnetwork        = var.subnetwork[0]
  ip_range_pods     = var.ip_range_pods
  ip_range_services = var.ip_range_services
  node_pools        = var.node_pools
}