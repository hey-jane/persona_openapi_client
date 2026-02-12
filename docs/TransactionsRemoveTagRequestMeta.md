# PersonaAPIClient::TransactionsRemoveTagRequestMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name** | **String** | Name of the tag to add to the Transaction. | [optional] |
| **tag_id** | **String** | ID of the tag to add to the Transaction. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::TransactionsRemoveTagRequestMeta.new(
  tag_name: null,
  tag_id: null
)
```

