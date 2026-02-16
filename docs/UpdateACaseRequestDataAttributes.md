# PersonaAPIClient::UpdateACaseRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**Array&lt;UpdateACaseRequestDataAttributesAttachmentsInner&gt;**](UpdateACaseRequestDataAttributesAttachmentsInner.md) | List of PDF and image files to add to this case. | [optional] |
| **case_queue_id** | **String** | ID of the case queue to put this case in. Set to null to remove case from case queue. | [optional] |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Schema is defined by your Case Template. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateACaseRequestDataAttributes.new(
  attachments: null,
  case_queue_id: null,
  fields: null
)
```

