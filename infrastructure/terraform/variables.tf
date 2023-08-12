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