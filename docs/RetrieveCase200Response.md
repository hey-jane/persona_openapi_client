# PersonaAPIClient::RetrieveCase200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Modelcase**](Modelcase.md) |  |  |
| **included** | [**Array&lt;CasesIncludedObjectsInner&gt;**](CasesIncludedObjectsInner.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::RetrieveCase200Response.new(
  data: null,
  included: null
)
```

