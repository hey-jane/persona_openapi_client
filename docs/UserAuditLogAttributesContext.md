# PersonaAPIClient::UserAuditLogAttributesContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** | ID of the inquiry created -- this property is only present when path is /api/internal/dashboard/v1/inquiries and method is POST | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UserAuditLogAttributesContext.new(
  inquiry_id: null
)
```

