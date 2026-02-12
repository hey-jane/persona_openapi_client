# PersonaAPIClient::WebhookInquiryCreatedRequestDataAllOfAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Datetime when the event was created. | [optional] |
| **name** | **String** |  | [optional] |
| **payload** | [**WebhookInquiryCreatedRequestDataAllOfAttributesAllOfPayload**](WebhookInquiryCreatedRequestDataAllOfAttributesAllOfPayload.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WebhookInquiryCreatedRequestDataAllOfAttributes.new(
  created_at: null,
  name: null,
  payload: null
)
```

