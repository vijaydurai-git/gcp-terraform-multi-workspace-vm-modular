resource "google_compute_firewall" "allow_rules" {
  name    = "${var.instance_name}-fw"
  network = var.network_self_link
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = var.allowed_ports
  }

  # Apply these rules to instances with these tags
  target_tags = var.target_tags
  
  # Allow from everywhere (0.0.0.0/0)
  source_ranges = ["0.0.0.0/0"]
}