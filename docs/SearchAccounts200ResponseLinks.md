# PersonaAPIClient::SearchAccounts200ResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prev** | **String** | URL pointing to the previous page of data, or null if on the first page. Must be used with POST request and original request body. |  |
| **_next** | **String** | URL pointing to the next page of data, or null if on the last page. Must be used with POST request and original request body. |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchAccounts200ResponseLinks.new(
  prev: null,
  _next: null
)
```

