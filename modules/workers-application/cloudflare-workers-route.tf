resource "cloudflare_workers_route" "main" {
  zone_id     = var.cloudflare_zone_id
  pattern     = "${var.fqdn}/*"
  script      = cloudflare_workers_script.main.script_name

  depends_on = [cloudflare_workers_script.main]
}
