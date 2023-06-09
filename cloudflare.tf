terraform {
  required_providers {
    cloudflare = {
        source = "cloudflare/cloudflare",
        version = "~> 4"
    }
  }
}

provider "cloudflare" {
  api_token = ""
}

variable "zone_id" {
  default = ""
}

variable "account_id" {
  default = "<YOUR_ACCOUNT_ID>"
}

variable "domain" {
  default = "<YOUR_DOMAIN>"
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  value   = "203.0.113.10"
  type    = "A"
  proxied = true
}