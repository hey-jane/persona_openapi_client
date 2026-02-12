# PersonaAPIClient::ListAllCases200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Modelcase&gt;**](Modelcase.md) | An array of Cases |  |
| **included** | [**Array&lt;CasesIncludedObjectsInner&gt;**](CasesIncludedObjectsInner.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |
| **links** | [**ListAllApiKeys200ResponseLinks**](ListAllApiKeys200ResponseLinks.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListAllCases200Response.new(
  data: null,
  included: null,
  links: null
)
```

