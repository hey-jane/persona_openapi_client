# PersonaAPIClient::SearchCasesRequestQuery

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::SearchCasesRequestQuery.openapi_one_of
# =>
# [
#   :'SearchAccountsRequestQueryOneOf1',
#   :'SearchAccountsRequestQueryOneOf2',
#   :'SearchCasesRequestQueryOneOf',
#   :'SearchCasesRequestQueryOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::SearchCasesRequestQuery.build(data)
# => #<SearchAccountsRequestQueryOneOf1:0x00007fdd4aab02a0>

PersonaAPIClient::SearchCasesRequestQuery.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SearchAccountsRequestQueryOneOf1`
- `SearchAccountsRequestQueryOneOf2`
- `SearchCasesRequestQueryOneOf`
- `SearchCasesRequestQueryOneOf1`
- `nil` (if no type matches)

