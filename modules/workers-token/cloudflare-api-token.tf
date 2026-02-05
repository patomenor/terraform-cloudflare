resource "cloudflare_api_token" "main" {
  name = "${var.domain}-gh-actions-deploy"

  policies = [{
    effect = "allow"
    permission_groups = [
      { id = local.cloudflare_workers_scripts_read_perm.id },
      { id = local.cloudflare_workers_scripts_write_perm.id },

      { id = local.cloudflare_memberships_read_perm.id },
      { id = local.cloudflare_user_details_read_perm.id },

      { id = local.cloudflare_workers_routes_read_perm.id },
      { id = local.cloudflare_workers_routes_write_perm.id }
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
