resource "cloudflare_ruleset" "www" {
  zone_id     = var.cloudflare_zone_id
  name        = "www redirect ruleset"
  description = "Redirect ruleset"
  kind        = "zone"
  phase       = "http_request_dynamic_redirect"


  rules = [
    # {
    #   action = "redirect"
    #   action_parameters = {
    #     from_list = {
    #       name = cloudflare_list.www.name
    #       key  = "http.request.full_uri"
    #     }
    #   }
    #   expression  = "http.request.full_uri in ${"$"}${cloudflare_list.www.name}"
    #   description = "Apply redirects from www to apex domain"
    #   enabled     = true
    # },

    # {
    #   action = "redirect"
    #   action_parameters = {
    #     from_value = {
    #       status_code = 301
    #       target_url = {
    #         value = "https://${var.domain}"
    #       }
    #       preserve_query_string = true
    #     }
    #   }
    #   expression  = "http.request.full_uri eq \"www.${var.domain}\""
    #   description = "Redirect all requests from www.${var.domain} to ${var.domain}"
    #   enabled     = true
    #   # logging = {
    #   #   enabled = true
    #   # }
    # }


    {
      action = "redirect"
      action_parameters = {
        from_value = {
          status_code = 302
          target_url = {
            expression = "concat(\"https://${var.domain}\", http.request.uri.path)"
          }
          preserve_query_string = true
        }
      }
      expression  = "(starts_with(http.host, \"www.\"))"
      description = "Redirect www to non-www"
      enabled     = true
    }


  ]
}

