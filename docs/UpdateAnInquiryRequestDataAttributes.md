# PersonaAPIClient::UpdateAnInquiryRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note** | **String** | Unstructured field for your custom use | [optional] |
| **fields** | [**InquiryFields**](InquiryFields.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tag names to be associated with the Inquiry. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateAnInquiryRequestDataAttributes.new(
  note: null,
  fields: null,
  tags: null
)
```

