# PersonaAPIClient::UpdateATransactionRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Schema is defined by your transaction type. | [optional] |
| **status** | **String** |  | [optional] |
| **reference_id** | **String** | Reference ID on Account, refers to an entity in your user model. | [optional] |
| **label** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tag names to be associated with the Transaction. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateATransactionRequestDataAttributes.new(
  fields: null,
  status: null,
  reference_id: null,
  label: null,
  tags: null
)
```

