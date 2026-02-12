# PersonaAPIClient::RunAccountActionRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_action_id** | **String** | The ID of the account action to run |  |
| **parameters** | **Hash&lt;String, Object&gt;** | Parameters required by the account action | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::RunAccountActionRequestData.new(
  account_action_id: null,
  parameters: null
)
```

