output "subnet_id" {
  value       = google_compute_subnetwork.subnet.id
  description = "The ID of the subnet created"
}

output "network_id" {
  value       = google_compute_network.vpc.id
  description = "The ID of the VPC created"
}
