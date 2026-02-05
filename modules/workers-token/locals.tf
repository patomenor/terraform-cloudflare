locals {
  allowed_ip_range = data.github_ip_ranges.main.actions
  cloudflare_token = cloudflare_api_token.main.value

  groups_list = data.cloudflare_api_token_permission_groups_list.main

  # https://github.com/cloudflare/terraform-provider-cloudflare/issues/5062#issuecomment-2749703161
  cloudflare_workers_scripts_read_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Workers Scripts Read"
    )
  )
  cloudflare_workers_scripts_write_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Workers Scripts Write"
    )
  )
  cloudflare_memberships_read_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Memberships Read"
    )
  )
  cloudflare_user_details_read_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "User Details Read"
    )
  )

  cloudflare_workers_routes_read_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Workers Routes Read"
    )
  )
  cloudflare_workers_routes_write_perm = element(
    local.groups_list.result,
    index(
      local.groups_list.result.*.name,
      "Workers Routes Write"
    )
  )
}
