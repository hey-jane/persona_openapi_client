# PersonaAPIClient::ListItemGovernmentIdNumberRelationshipsCreatorData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ListItemGovernmentIdNumberRelationshipsCreatorData.openapi_one_of
# =>
# [
#   :'ListItemBrowserFingerprintRelationshipsCreatorDataOneOf',
#   :'ListItemBrowserFingerprintRelationshipsCreatorDataOneOf1',
#   :'ListItemBrowserFingerprintRelationshipsCreatorDataOneOf2',
#   :'ListItemBrowserFingerprintRelationshipsCreatorDataOneOf3',
#   :'ListItemGovernmentIdNumberRelationshipsCreatorDataOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ListItemGovernmentIdNumberRelationshipsCreatorData.build(data)
# => #<ListItemBrowserFingerprintRelationshipsCreatorDataOneOf:0x00007fdd4aab02a0>

PersonaAPIClient::ListItemGovernmentIdNumberRelationshipsCreatorData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListItemBrowserFingerprintRelationshipsCreatorDataOneOf`
- `ListItemBrowserFingerprintRelationshipsCreatorDataOneOf1`
- `ListItemBrowserFingerprintRelationshipsCreatorDataOneOf2`
- `ListItemBrowserFingerprintRelationshipsCreatorDataOneOf3`
- `ListItemGovernmentIdNumberRelationshipsCreatorDataOneOf`
- `nil` (if no type matches)

