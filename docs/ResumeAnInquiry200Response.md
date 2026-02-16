# PersonaAPIClient::ResumeAnInquiry200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Inquiry**](Inquiry.md) |  |  |
| **included** | [**Array&lt;InquiryIncludedObjectsInner&gt;**](InquiryIncludedObjectsInner.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |
| **meta** | [**ResumeAnInquiry200ResponseMeta**](ResumeAnInquiry200ResponseMeta.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ResumeAnInquiry200Response.new(
  data: null,
  included: null,
  meta: null
)
```

