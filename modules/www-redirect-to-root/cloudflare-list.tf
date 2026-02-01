# resource "cloudflare_list" "www" {
#   account_id  = var.cloudflare_account_id
#   name        = "${local.domain_slug}_www_redirect"
#   description = "list to configure www redirect to apex"
#   kind        = "redirect"
# }

# resource "cloudflare_list_item" "www" {
#   account_id = var.cloudflare_account_id
#   list_id    = cloudflare_list.www.id

#   redirect = {
#     source_url            = "www.${var.domain}/"
#     target_url            = "https://${var.domain}/"
#     include_subdomains    = false
#     subpath_matching      = true
#     status_code           = 301
#     preserve_query_string = true
#     preserve_path_suffix  = true
#   }
# }
