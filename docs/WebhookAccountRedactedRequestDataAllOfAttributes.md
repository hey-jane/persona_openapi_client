# PersonaAPIClient::WebhookAccountRedactedRequestDataAllOfAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Datetime when the event was created. | [optional] |
| **name** | **String** |  | [optional] |
| **payload** | [**WebhookAccountRedactedRequestDataAllOfAttributesAllOfPayload**](WebhookAccountRedactedRequestDataAllOfAttributesAllOfPayload.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WebhookAccountRedactedRequestDataAllOfAttributes.new(
  created_at: null,
  name: null,
  payload: null
)
```

