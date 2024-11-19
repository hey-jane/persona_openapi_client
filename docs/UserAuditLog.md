# OpenapiClient::UserAuditLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | user-audit-log | [optional] |
| **id** | **String** |  | [optional] |
| **attributes** | [**UserAuditLogAttributes**](UserAuditLogAttributes.md) |  | [optional] |
| **relationships** | [**UserAuditLogRelationships**](UserAuditLogRelationships.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserAuditLog.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```
