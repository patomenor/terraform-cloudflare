resource "cloudflare_workers_script" "main" {
  account_id  = var.cloudflare_account_id
  script_name = var.name
  content     = var.cloudflare_worker_script_content
  main_module = "index.js"
  # body_part   = "index.js"

  compatibility_date  = var.cloudflare_worker_compatibility_date
  compatibility_flags = var.cloudflare_worker_compatibility_flags
  # module              = var.cloudflare_worker_module

  bindings = var.cloudflare_worker_bindings

  keep_assets = true

  # deployment is via CI
  lifecycle {
    ignore_changes = [
      content
    ]
  }
}
