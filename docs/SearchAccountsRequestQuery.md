# PersonaAPIClient::SearchAccountsRequestQuery

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::SearchAccountsRequestQuery.openapi_one_of
# =>
# [
#   :'SearchAccountsRequestQueryOneOf',
#   :'SearchAccountsRequestQueryOneOf1',
#   :'SearchAccountsRequestQueryOneOf2',
#   :'SearchAccountsRequestQueryOneOf3'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::SearchAccountsRequestQuery.build(data)
# => #<SearchAccountsRequestQueryOneOf:0x00007fdd4aab02a0>

PersonaAPIClient::SearchAccountsRequestQuery.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SearchAccountsRequestQueryOneOf`
- `SearchAccountsRequestQueryOneOf1`
- `SearchAccountsRequestQueryOneOf2`
- `SearchAccountsRequestQueryOneOf3`
- `nil` (if no type matches)

