# PersonaAPIClient::GenerateAOneTimeLinkForAnInquirySession200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**InquirySession**](InquirySession.md) |  |  |
| **meta** | [**GenerateAOneTimeLink200ResponseMeta**](GenerateAOneTimeLink200ResponseMeta.md) |  |  |
| **included** | [**Array&lt;InquirySessionsIncludedObjectsInner&gt;**](InquirySessionsIncludedObjectsInner.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::GenerateAOneTimeLinkForAnInquirySession200Response.new(
  data: null,
  meta: null,
  included: null
)
```

