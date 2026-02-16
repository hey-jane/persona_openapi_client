# PersonaAPIClient::EventAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **payload** | [**EventAttributesPayload**](EventAttributesPayload.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **context** | **Hash&lt;String, Object&gt;** | Additional context populated for some event types. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::EventAttributes.new(
  name: null,
  payload: null,
  created_at: null,
  context: null
)
```

