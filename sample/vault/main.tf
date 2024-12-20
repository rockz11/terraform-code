terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "4.3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}
provider "vault" {
  address = "https:172.31.87.131:8200"
  token = var.vault_token
}
variable "vault_token" {}

data "vault_kv_secret_v2" "example" {
  name  = "my_credentials"
  mount = "test"
}
# resource "local_file" "foo" {
#   content = data.vault_kv_secret_v2.example.data_json
#   filename = "/tmp/secret"
# }

# output "json" {
#   value = data.vault_kv_secret_v2.example.data_json
}