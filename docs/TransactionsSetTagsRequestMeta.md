# PersonaAPIClient::TransactionsSetTagsRequestMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_name** | **Array&lt;String&gt;** | Name of the tag to add to the Transaction. | [optional] |
| **tag_id** | **Array&lt;String&gt;** | ID of the tag to add to the Transaction. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::TransactionsSetTagsRequestMeta.new(
  tag_name: null,
  tag_id: null
)
```

