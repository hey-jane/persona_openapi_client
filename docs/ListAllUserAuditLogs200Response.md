# PersonaAPIClient::ListAllUserAuditLogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;UserAuditLog&gt;**](UserAuditLog.md) |  |  |
| **links** | [**ListAllDevices200ResponseLinks**](ListAllDevices200ResponseLinks.md) |  |  |
| **included** | [**Array&lt;User&gt;**](User.md) | Objects that will be returned by default unless otherwise specified using the &#x60;include&#x60; query parameter in the request. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListAllUserAuditLogs200Response.new(
  data: null,
  links: null,
  included: null
)
```

