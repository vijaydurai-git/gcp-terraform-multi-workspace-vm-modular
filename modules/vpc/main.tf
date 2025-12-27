data "google_compute_subnetwork" "selected" {
  name    = var.subnet_name
  region  = var.region
  project = var.project_id
}