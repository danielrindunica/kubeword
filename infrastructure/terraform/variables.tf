variable "project_id" {
  type        = string
  description = "The project ID to host the cluster in (required)"
}
variable "name" {
  type        = string
  description = "The name of the cluster (required)"
}
variable "description" {
  type        = string
  description = "Description of the GKE cluster"
}
variable "region" {
  type        = string
  description = "The region to host the cluster in (optional if zonal cluster / required if regional)"
}
variable "zones" {
  type        = list(string)
  description = "The zones to host the cluster in (optional if regional cluster / required if zonal)"
}
variable "network" {
  type        = string
  description = "The VPC network to host the cluster in (required)"
}
variable "subnetwork" {
  type        = list(string)
  description = "The name for the subnetwork"
}
variable "ip_range_pods" {
  type        = string
  description = "The name of the secondary subnet ip range to use for pods"
}
variable "ip_range_services" {
  type        = string
  description = "The name of the secondary subnet range to use for services"
}
variable "node_pools" {
  type        = list(map(any))
  description = "List of maps containing node pools"
}
variable "network_name" {
  type        = string
  description = "The name of the network being created"
}
variable "auto_create_subnetworks" {
  type        = bool
  description = "value"
}
variable "ingress_rules" {
  type = list(object({
    name                    = string
    description             = optional(string, null)
    priority                = optional(number, null)
    destination_ranges      = optional(list(string), [])
    source_ranges           = optional(list(string), [])
    source_tags             = optional(list(string))
    source_service_accounts = optional(list(string))
    target_tags             = optional(list(string))
    target_service_accounts = optional(list(string))

    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    log_config = optional(object({
      metadata = string
    }))
  }))
  description = "List of ingress rules. This will be ignored if variable 'rules' is non-empty"
}
variable "egress_rules" {
  type = list(object({
    name                    = string
    description             = optional(string, null)
    priority                = optional(number, null)
    destination_ranges      = optional(list(string), [])
    source_ranges           = optional(list(string), [])
    source_tags             = optional(list(string))
    source_service_accounts = optional(list(string))
    target_tags             = optional(list(string))
    target_service_accounts = optional(list(string))

    allow = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    deny = optional(list(object({
      protocol = string
      ports    = optional(list(string))
    })), [])
    log_config = optional(object({
      metadata = string
    }))
  }))
  description = "List of egress rules. This will be ignored if variable 'rules' is non-empty"
}