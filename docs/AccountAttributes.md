# PersonaAPIClient::AccountAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** |  | [optional] |
| **account_type_name** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **redacted_at** | **Time** |  | [optional] |
| **fields** | [**AccountAttributesFields**](AccountAttributesFields.md) |  | [optional] |
| **tags** | **Array&lt;Object&gt;** |  | [optional] |
| **account_status** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::AccountAttributes.new(
  reference_id: null,
  account_type_name: null,
  created_at: null,
  updated_at: null,
  redacted_at: null,
  fields: null,
  tags: null,
  account_status: null
)
```

