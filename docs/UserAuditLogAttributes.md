# PersonaAPIClient::UserAuditLogAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **get_params** | [**UserAuditLogAttributesGetParams**](UserAuditLogAttributesGetParams.md) |  | [optional] |
| **post_params** | [**UserAuditLogAttributesPostParams**](UserAuditLogAttributesPostParams.md) |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **user_agent** | **String** |  | [optional] |
| **response_status** | **Integer** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **impersonator_email_address** | **String** |  | [optional] |
| **context** | [**UserAuditLogAttributesContext**](UserAuditLogAttributesContext.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UserAuditLogAttributes.new(
  path: null,
  method: null,
  get_params: null,
  post_params: null,
  ip_address: null,
  user_agent: null,
  response_status: null,
  created_at: null,
  impersonator_email_address: null,
  context: null
)
```

