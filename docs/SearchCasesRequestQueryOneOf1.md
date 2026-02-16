# PersonaAPIClient::SearchCasesRequestQueryOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | The attribute name to filter on (e.g., &#39;created_at&#39;, &#39;template&#39;, &#39;status&#39;, &#39;fields.priority&#39;) |  |
| **operator** | **String** | Comparison operator. Possible values: eq (equal), gt (greater than), gte (greater than or equal), lt (less than), lte (less than or equal). |  |
| **value** | [**SearchAccountsRequestQueryOneOf3Value**](SearchAccountsRequestQueryOneOf3Value.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchCasesRequestQueryOneOf1.new(
  attribute: null,
  operator: null,
  value: null
)
```

