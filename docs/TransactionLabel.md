# PersonaAPIClient::TransactionLabel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | Unique identifier for this Transaction Label. Starts with &#x60;txnl_&#x60;. | [optional] |
| **attributes** | [**TransactionLabelAttributes**](TransactionLabelAttributes.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::TransactionLabel.new(
  type: null,
  id: null,
  attributes: null
)
```

