# PersonaAPIClient::ListAllInquiriesFilterParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** | Comma separated list of inquiry IDs (starting with &#x60;inq_&#x60;) to filter inquiries by | [optional] |
| **account_id** | **String** | Comma separated list of account IDs (starting with &#x60;act_&#x60;) to filter inquiries by | [optional] |
| **note** | **String** | Filter inquiries by note. Must be the only filter. | [optional] |
| **reference_id** | **String** | Filter inquiries by reference ID | [optional] |
| **inquiry_template_id** | **String** | Comma separated list of inquiry template IDs (starting with &#x60;itmpl_&#x60;) to filter inquiries by | [optional] |
| **template_id** | **String** | Comma separated list of legacy template IDs (starting with &#x60;tmpl_&#x60;) to filter inquiries by | [optional] |
| **status** | **String** | Comma separated list of statuses to filter inquiries by | [optional] |
| **created_at_start** | **Time** | Filter inquiries by creation date, equal to or later than | [optional] |
| **created_at_end** | **Time** | Filter inquiries by creation date, earlier than or equal to | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListAllInquiriesFilterParameter.new(
  inquiry_id: null,
  account_id: null,
  note: null,
  reference_id: null,
  inquiry_template_id: null,
  template_id: null,
  status: null,
  created_at_start: null,
  created_at_end: null
)
```

