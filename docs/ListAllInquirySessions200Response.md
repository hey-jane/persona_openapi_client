# PersonaAPIClient::ListAllInquirySessions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;InquirySession&gt;**](InquirySession.md) |  |  |
| **included** | [**Array&lt;InquirySessionsIncludedObjectsInner&gt;**](InquirySessionsIncludedObjectsInner.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |
| **links** | [**ListAllDevices200ResponseLinks**](ListAllDevices200ResponseLinks.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListAllInquirySessions200Response.new(
  data: null,
  included: null,
  links: null
)
```

