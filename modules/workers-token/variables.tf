variable "allowed_ip_range" {
  type        = list(string)
  description = "Deployment ips allowed to deploy pages"
}

variable "cloudflare_account_id" {
  type        = string
  description = "Account ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Domain ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "domain" {
  type        = string
  description = "Default to get zone info"
}


