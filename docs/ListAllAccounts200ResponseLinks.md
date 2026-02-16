# PersonaAPIClient::ListAllAccounts200ResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prev** | **String** | URL pointing to the previous page of data, or null if on the first page. |  |
| **_next** | **String** | URL pointing to the next page of data, or null if on the last page. |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListAllAccounts200ResponseLinks.new(
  prev: null,
  _next: null
)
```

