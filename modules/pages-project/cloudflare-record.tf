resource "cloudflare_dns_record" "main" {
  zone_id = var.cloudflare_zone_id
  name    = var.subdomain
  content = cloudflare_pages_project.main.subdomain
  type    = "CNAME"
  ttl     = 1
  proxied = true
}
