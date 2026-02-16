# PersonaAPIClient::AccountsListAllRelations200ResponseDataInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::AccountsListAllRelations200ResponseDataInner.openapi_one_of
# =>
# [
#   :'Account',
#   :'Transaction'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::AccountsListAllRelations200ResponseDataInner.build(data)
# => #<Account:0x00007fdd4aab02a0>

PersonaAPIClient::AccountsListAllRelations200ResponseDataInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Account`
- `Transaction`
- `nil` (if no type matches)

