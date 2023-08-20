project_id        = "ab-rotech-playground"
name              = "kubeword"
region            = "europe-west1"
description       = "KubeWord: A Kubernetes Adventure with WordPress & MySQL"
zones             = ["europe-west1-b"]
network           = "default"
subnetwork        = ["kubeword-vpc"]
ip_range_pods     = ""
ip_range_services = ""
node_pools = [{
  name               = "default-node-pool"
  machine_type       = "e2-medium"
  node_locations     = "europe-west1-b"
  min_count          = 1
  max_count          = 10
  disk_size_gb       = 100
  disk_type          = "pd-standard"
  image_type         = "COS_CONTAINERD"
  initial_node_count = 3
}]
network_name            = "kubeword-vpc"
auto_create_subnetworks = true
ingress_rules = [{
  name                    = "kubeword-ingress"
  description             = null
  direction               = "IGRESS"
  priority                = null
  destination_ranges      = ["0.0.0.0/0"]
  source_ranges           = ["0.0.0.0/0"]
  source_tags             = null
  source_service_accounts = null
  target_tags             = null
  target_service_accounts = null
  allow = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
  deny = []
  log_config = {
    metadata = "INCLUDE_ALL_METADATA"
  }
}]
egress_rules = [{
  name                    = "kubeword-egress"
  description             = null
  direction               = "EGRESS"
  priority                = null
  destination_ranges      = ["0.0.0.0/0"]
  source_ranges           = ["0.0.0.0/0"]
  source_tags             = null
  source_service_accounts = null
  target_tags             = null
  target_service_accounts = null
  allow = [{
    protocol = "tcp"
    ports    = ["443"]
  }]
  deny = []
  log_config = {
    metadata = "INCLUDE_ALL_METADATA"
  }
}]