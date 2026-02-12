# PersonaAPIClient::SearchAccountsRequestQueryOneOf3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | The attribute name to filter on (e.g., &#39;created_at&#39;, &#39;type&#39;, &#39;status&#39;, &#39;fields.age&#39;) |  |
| **operator** | **String** | Comparison operator. Possible values: eq (equal), gt (greater than), gte (greater than or equal), lt (less than), lte (less than or equal). |  |
| **value** | [**SearchAccountsRequestQueryOneOf3Value**](SearchAccountsRequestQueryOneOf3Value.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchAccountsRequestQueryOneOf3.new(
  attribute: null,
  operator: null,
  value: null
)
```

