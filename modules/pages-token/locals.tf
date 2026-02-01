locals {
  groups_list = data.cloudflare_api_token_permission_groups_list.main

  # https://github.com/cloudflare/terraform-provider-cloudflare/issues/5062#issuecomment-2749703161
  cloudflare_pages_read_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Pages Read"
    )
  )
  cloudflare_pages_write_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Pages Write"
    )
  )
}
