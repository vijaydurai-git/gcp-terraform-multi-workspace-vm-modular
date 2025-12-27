variable "project_id" {}
variable "network_self_link" {}
variable "instance_name" {}
variable "allowed_ports" { type = list(string) }
variable "target_tags" { type = list(string) }