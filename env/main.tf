module "vpc" {
  source      = "../modules/vpc"
  project_id  = var.project_id
  region      = var.region
  subnet_name = var.exist_subnet_name
}

module "firewall" {
  source            = "../modules/firewall"
  project_id        = var.project_id
  instance_name     = var.instance_name
  network_self_link = module.vpc.network_self_link
  allowed_ports     = var.allowed_ports
  target_tags       = var.tags
}

module "compute" {
  source                 = "../modules/compute"
  project_id             = var.project_id
  zone                   = var.zone
  instance_name          = var.instance_name
  machine_type           = var.machine_type
  subnetwork_link        = module.vpc.subnetwork_self_link
  image                  = var.instance_image
  disk_size_gb           = var.disk_size_gb
  disk_type              = var.disk_type
  tags                   = var.tags
  labels                 = var.labels
  ssh_user               = var.ssh_user
  service_account_email  = var.service_account_email
  service_account_scopes = var.service_account_scopes
}