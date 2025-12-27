# Core
variable "project_id" {}
variable "region" {}
variable "zone" {}

# Network & Firewall
variable "exist_subnet_name" {}
variable "allowed_ports" { type = list(string) }

# Instance
variable "instance_name" {}
variable "machine_type" {}
variable "instance_image" {}
variable "disk_size_gb" {}
variable "disk_type" {}

# Security & Identity
variable "ssh_user" {}
variable "service_account_email" {}
variable "service_account_scopes" { type = list(string) }
variable "tags" { type = list(string) }
variable "labels" { type = map(string) }