# PersonaAPIClient::SearchAccountsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**SearchAccountsRequestQuery**](SearchAccountsRequestQuery.md) |  | [optional] |
| **sort** | [**SearchAccountsRequestSort**](SearchAccountsRequestSort.md) |  | [optional] |
| **page** | [**SearchAccountsRequestPage**](SearchAccountsRequestPage.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchAccountsRequest.new(
  query: null,
  sort: null,
  page: null
)
```

