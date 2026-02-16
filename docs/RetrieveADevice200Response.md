# PersonaAPIClient::RetrieveADevice200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Device**](Device.md) |  |  |
| **included** | **Array&lt;Object&gt;** | Excluded from the response by default. Will be an empty array when the &#x60;include&#x60; query parameter in the request was explicitly set to empty. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::RetrieveADevice200Response.new(
  data: null,
  included: null
)
```

