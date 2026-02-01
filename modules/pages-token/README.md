# Base

Basic control over DNS with Terraform.

Above few configuration to generate token with only required permissions and used resources.

## Cloudflare Api tokens

### Permissions

- User > API Tokens > Edit

To access this type of permission it is necessary to use a template
**Create Additional Tokens**, access outside the template is not available,
as mentioned:

- [What permission do I need to be able to read permission groups?](https://community.cloudflare.com/t/what-permission-do-i-need-to-be-able-to-read-permission-groups/442549)

### Resources

- cloudflare-api-token-permission-groups.tf
- cloudflare-api-token.tf
- cloudflare-zone.tf
