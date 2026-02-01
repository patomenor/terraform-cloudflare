variable "allowed_ip_range" {
  type        = list(string)
  description = "Deployment ips allowed to deploy pages"
}

variable "cloudflare_account_id" {
  type        = string
}

variable "domain" {
  type        = string
  description = "Default to get zone info"
}
