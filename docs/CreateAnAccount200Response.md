# PersonaAPIClient::CreateAnAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Account**](Account.md) |  |  |
| **included** | [**Array&lt;AccountType&gt;**](AccountType.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAnAccount200Response.new(
  data: null,
  included: null
)
```

