variable "env" {}
variable "component_name" {}
variable "instance_type" {}
variable "app_port" {
  type = number
}
variable "zone_id" {
  type = string
}
variable "domain_name" {}  
variable "vault_token" {}