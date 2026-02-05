variable "cloudflare_account_id" {
  type        = string
  description = "Account ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "cloudflare_worker_bindings" {
  type = list(object({
    name = string
    text = string
    type = string
  }))

  default = []
}

variable "cloudflare_worker_compatibility_date" {
  type    = string
  default = "2024-10-10"
}

variable "cloudflare_worker_compatibility_flags" {
  type    = list(string)
  default = []
}

# variable "cloudflare_worker_module" {
#   type    = bool
#   default = true
# }

variable "cloudflare_worker_script_content" {
  type    = string
  default = <<EOF
export default {
  async fetch(request) {
    const data = {
      hello: "world",
    };

    return Response.json(data);
  },
};
EOF
}

variable "cloudflare_zone_id" {
  type        = string
  description = "Domain ID registered in Cloudflare dashboard, receive as variable because major upgrades broke and this simplify use"
}

variable "domain" {
  type        = string
  description = "Default domain to use in another workspaces"
}

variable "environment" {
  type        = string
  description = "production"
}

variable "fqdn" {
  type        = string
  description = "full name domain"
}

variable "name" {
  type = string
}
