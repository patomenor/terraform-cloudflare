variable "cloudflare_account_id" {
  type = string
}

variable "cloudflare_preview_fail_open" {
  type    = bool
  default = false
}

variable "cloudflare_production_fail_open" {
  type    = bool
  default = false
}

variable "cloudflare_production_branch" {
  type    = string
  default = "main"
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Domain ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "domain" {
  type = string
}

variable "name" {
  type = string
}

variable "subdomain" {
  type    = string
  default = "@"
}
