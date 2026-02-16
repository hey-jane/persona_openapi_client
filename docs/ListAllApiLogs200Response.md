# PersonaAPIClient::ListAllApiLogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ApiLog&gt;**](ApiLog.md) | An array of API Logs |  |
| **links** | [**ListAllApiKeys200ResponseLinks**](ListAllApiKeys200ResponseLinks.md) |  |  |
| **included** | **Array&lt;Object&gt;** | Excluded from the response by default. Will be an empty array when the &#x60;include&#x60; query parameter in the request was explicitly set to empty. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListAllApiLogs200Response.new(
  data: null,
  links: null,
  included: null
)
```

