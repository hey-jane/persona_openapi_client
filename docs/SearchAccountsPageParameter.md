# PersonaAPIClient::SearchAccountsPageParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **after** | **String** | Cursor for forward pagination. Use the value from &#x60;links.next&#x60; in the previous response. | [optional] |
| **before** | **String** | Cursor for backward pagination. Use the value from &#x60;links.prev&#x60; in the previous response. | [optional] |
| **size** | **Integer** | Number of results to return per page. | [optional][default to 10] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchAccountsPageParameter.new(
  after: null,
  before: null,
  size: null
)
```

