resource "cloudflare_dns_record" "www_aaaa" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  content = "100::"
  type    = "AAAA"
  ttl     = 1
  proxied = true
}
