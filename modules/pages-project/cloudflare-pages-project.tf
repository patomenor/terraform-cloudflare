resource "cloudflare_pages_project" "main" {
  account_id        = var.cloudflare_account_id
  name              = var.name
  production_branch = var.cloudflare_production_branch

  deployment_configs = {
    preview = {
      env_vars = {
        CFP_PASSWORD = {
          type  = "plain_text"
          value = "hello"
        }
      }
      fail_open = var.cloudflare_preview_fail_open
    }
    production = {
      env_vars = {
        CFP_PASSWORD = {
          type  = "plain_text"
          value = "hello"
        }
      }
      fail_open = var.cloudflare_production_fail_open
    }
  }

  lifecycle {
    ignore_changes = [
      deployment_configs.preview.always_use_latest_compatibility_date,
      deployment_configs.preview.build_image_major_version,
      deployment_configs.preview.compatibility_date,
      deployment_configs.preview.compatibility_flags,
      deployment_configs.preview.limits,
      deployment_configs.preview.mtls_certificates,
      deployment_configs.preview.placement,
      deployment_configs.preview.wrangler_config_hash,

      deployment_configs.production.always_use_latest_compatibility_date,
      deployment_configs.production.build_image_major_version,
      deployment_configs.production.compatibility_date,
      deployment_configs.production.compatibility_flags,
      deployment_configs.production.limits,
      deployment_configs.production.mtls_certificates,
      deployment_configs.production.placement,
      deployment_configs.production.wrangler_config_hash
    ]
  }
}
