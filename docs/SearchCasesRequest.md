# PersonaAPIClient::SearchCasesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | [**SearchCasesRequestQuery**](SearchCasesRequestQuery.md) |  | [optional] |
| **sort** | [**SearchAccountsRequestSort**](SearchAccountsRequestSort.md) |  | [optional] |
| **page** | [**SearchAccountsRequestPage**](SearchAccountsRequestPage.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::SearchCasesRequest.new(
  query: null,
  sort: null,
  page: null
)
```

