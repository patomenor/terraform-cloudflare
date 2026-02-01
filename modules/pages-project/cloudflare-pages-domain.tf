resource "cloudflare_pages_domain" "main" {
  account_id   = var.cloudflare_account_id
  name         = strcontains(var.subdomain, "@") ? "${var.domain}" : "${var.subdomain}.${var.domain}"
  project_name = cloudflare_pages_project.main.name
}
