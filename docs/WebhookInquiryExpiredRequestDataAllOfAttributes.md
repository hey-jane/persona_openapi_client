# PersonaAPIClient::WebhookInquiryExpiredRequestDataAllOfAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Datetime when the event was created. | [optional] |
| **name** | **String** |  | [optional] |
| **payload** | [**WebhookInquiryExpiredRequestDataAllOfAttributesAllOfPayload**](WebhookInquiryExpiredRequestDataAllOfAttributesAllOfPayload.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WebhookInquiryExpiredRequestDataAllOfAttributes.new(
  created_at: null,
  name: null,
  payload: null
)
```

