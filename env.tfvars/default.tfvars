# --- Project Details ---
project_id        = "gcdevops-477403"
region            = "asia-south1"
zone              = "asia-south1-b"

# --- Networking ---
exist_subnet_name = "gcp-public"
allowed_ports     = ["22", "80", "443"] # Ports to open in Firewall

# --- Instance Config ---gcloud auth application-default login
instance_name     = "default"
machine_type      = "e2-medium"
instance_image    = "projects/ubuntu-os-cloud/global/images/ubuntu-minimal-2510-questing-amd64-v20251217"
disk_size_gb      = 20
disk_type         = "pd-balanced"

# --- Identity & Security ---
service_account_email = "540525299395-compute@developer.gserviceaccount.com"

service_account_scopes = [
  "https://www.googleapis.com/auth/devstorage.read_only",
  "https://www.googleapis.com/auth/logging.write",
  "https://www.googleapis.com/auth/monitoring.write",
  "https://www.googleapis.com/auth/service.management.readonly",
  "https://www.googleapis.com/auth/servicecontrol",
  "https://www.googleapis.com/auth/trace.append"
]

tags = [
  "http-server",
  "https-server",
  "allow-ssh-anyone",
  "allow-ssh-internal"
]

labels = {
  goog-ec-src = "vm_add-gcloud"
}

ssh_user       = "vijaydurai"
