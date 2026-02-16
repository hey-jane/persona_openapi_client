# PersonaAPIClient::UserAuditLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **attributes** | [**UserAuditLogAttributes**](UserAuditLogAttributes.md) |  | [optional] |
| **relationships** | [**UserAuditLogRelationships**](UserAuditLogRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UserAuditLog.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

