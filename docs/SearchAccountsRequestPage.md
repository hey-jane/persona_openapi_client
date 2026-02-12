# PersonaAPIClient::SearchAccountsRequestPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | Cursor for forward pagination | [optional] |
| **before** | **String** | Cursor for backward pagination | [optional] |
| **size** | **Integer** | Number of results to return per page | [optional][default to 10] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchAccountsRequestPage.new(
  after: null,
  before: null,
  size: null
)
```

