variable "project_id" {}
variable "zone" {}
variable "instance_name" {}
variable "machine_type" {}
variable "subnetwork_link" {}
variable "image" {}
variable "disk_size_gb" {}
variable "disk_type" {}
variable "tags" { type = list(string) }
variable "labels" { type = map(string) }
variable "ssh_user" {}
variable "ssh_public_key" {

    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDPNQtb9u41a8StZ5t8isG10w1l83WG4MQQ5twR50XpUkQzIoBsVVjLRtY50Nm6wkWu59g7oLe4P587ubB5oQipno6FPLarp+YorWHmtKVGUiliHz99D5NAuQEUvVXIT0QSL//qgCqFpP9wnDxbqQRtnKr4CT8jdoNWA45wxwKN482T8TDS0BfU5DdqGYel2PSM80XBIX4PwjPBZGSRl/b7+3lKi1m40A/4LEdQUeGzNetBAImnZ7GoAMTZACP8pG63fBeGuQbIwyEIEKsInZyj31VgagIND67ljliOuErm+iseu5Rd0XtuTbfwj91VZTVjDt/D7py1Z8YlBkXWMJbOysUxcB4Y5+yM1v2FB1z3fc+j8NUpwCpl2bB/atBwdWwaV/ISk/9XwPkJoPAaM1K+rOLGcq2T9/kMot/dBRl1kj1hzj8s9nJ/7JpK9iPmM3A1KjnEQxCwxEUnqYynU49A6ideWpgmIhW9qAE8SRjT6No/G4GK9GVEc32xqEXwCbk= vijaydurai"
  
}
variable "service_account_email" {}
variable "service_account_scopes" { type = list(string) }