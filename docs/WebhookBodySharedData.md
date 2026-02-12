# PersonaAPIClient::WebhookBodySharedData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | Unique identifier for this Event. Starts with &#x60;evt_&#x60;. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WebhookBodySharedData.new(
  type: null,
  id: null
)
```

