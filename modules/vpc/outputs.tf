output "subnetwork_self_link" {
  value = data.google_compute_subnetwork.selected.self_link
}
output "network_self_link" {
  value = data.google_compute_subnetwork.selected.network
}