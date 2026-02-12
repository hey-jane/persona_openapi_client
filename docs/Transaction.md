# PersonaAPIClient::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this Transaction. Starts with &#x60;txn_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**TransactionAttributes**](TransactionAttributes.md) |  | [optional] |
| **relationships** | [**TransactionRelationships**](TransactionRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::Transaction.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

