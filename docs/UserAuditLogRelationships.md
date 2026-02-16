# PersonaAPIClient::UserAuditLogRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**UserAuditLogRelationshipsUser**](UserAuditLogRelationshipsUser.md) |  | [optional] |
| **user_session** | [**UserAuditLogRelationshipsUserSession**](UserAuditLogRelationshipsUserSession.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UserAuditLogRelationships.new(
  user: null,
  user_session: null
)
```

