# PersonaAPIClient::SearchAccountsRequestSort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | The attribute name to sort by |  |
| **direction** | **String** | Sort direction. Possible values: asc (ascending), desc (descending). | [default to &#39;desc&#39;] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchAccountsRequestSort.new(
  attribute: null,
  direction: null
)
```

