resource "cloudflare_workers_custom_domain" "main" {
  account_id  = var.cloudflare_account_id
  hostname    = var.fqdn
  service     = cloudflare_workers_script.main.script_name
  zone_id     = var.cloudflare_zone_id
  environment = var.environment
}
