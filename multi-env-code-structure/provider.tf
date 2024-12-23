
provider "vault" {
  address         = "http://vault-internal.devops11.online:8200"
  token           = var.vault_token
  skip_tls_verify = true
}
