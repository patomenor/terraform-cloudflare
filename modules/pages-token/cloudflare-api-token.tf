resource "cloudflare_api_token" "main" {
  name = "${var.domain}-gh-actions-deploy"

  policies = [{
    effect = "allow"
    permission_groups = [
      { id = local.cloudflare_pages_read_perm.id },
      { id = local.cloudflare_pages_write_perm.id }
    ]
    resources = jsonencode({
      "com.cloudflare.api.account.${var.cloudflare_account_id}" = "*"
    })
  }]

  condition = {
    request_ip = {
      in = var.allowed_ip_range
    }
  }
}
