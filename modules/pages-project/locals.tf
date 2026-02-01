locals {
  domain_slug    = replace(var.domain, ".", "-")
  subdomain_slug = replace(var.subdomain, "@", "")
  fqdn_slug      = var.subdomain == "@" ? "${local.domain_slug}" : "${local.subdomain_slug}-${local.domain_slug}"
}
