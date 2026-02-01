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
