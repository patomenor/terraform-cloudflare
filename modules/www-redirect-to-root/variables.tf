variable "cloudflare_account_id" {
  type = string
}

variable "domain" {
  type = string
}

variable "cloudflare_zone_id" {
  type = string
}

variable "rules" {
  description = "Lista adicional de regras para adicionar ao ruleset"
  type        = any
  default     = []
}

variable "ruleset" {
  description = "Alias para var.rules: lista adicional de regras para adicionar ao ruleset"
  type        = any
  default     = []
}
