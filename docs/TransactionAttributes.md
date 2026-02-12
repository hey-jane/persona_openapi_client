# PersonaAPIClient::TransactionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Exact schema depends on the configuration of the Transaction Type for this Transaction. Keys in &#x60;fields&#x60; are **not** key inflected. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::TransactionAttributes.new(
  status: null,
  reference_id: null,
  fields: null,
  tags: null,
  created_at: null,
  updated_at: null
)
```

