# PersonaAPIClient::RetrieveAUserAuditLog200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**UserAuditLog**](UserAuditLog.md) |  |  |
| **included** | [**Array&lt;User&gt;**](User.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::RetrieveAUserAuditLog200Response.new(
  data: null,
  included: null
)
```

