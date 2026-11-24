# Base

Basic control over DNS with Terraform.

Above few configuration to generate token with only required permissions and used resources.

## Redirect www to apex

### Permissions

- Account > Account Rulesets > Edit
- Account > Account Filter Lists > Edit
- Zone > Single Redirect > Edit


### Resources

- cloudflare-ruleset.tf
- cloudflare-list.tf
- cloudflare-record-a.tf
- cloudflare-record-aaaa.tf

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `cloudflare_account_id` | Account ID in Cloudflare | `string` | n/a | yes |
| `cloudflare_zone_id` | Zone ID in Cloudflare | `string` | n/a | yes |
| `domain` | Apex domain | `string` | n/a | yes |
| `rules` | Lista de regras adicionais para adicionar ao ruleset (mescladas com a regra padrão) | `any` | `[]` | no |
| `ruleset` | Alias para `rules` | `any` | `[]` | no |

