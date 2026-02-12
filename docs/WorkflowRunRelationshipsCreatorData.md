# PersonaAPIClient::WorkflowRunRelationshipsCreatorData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::WorkflowRunRelationshipsCreatorData.openapi_one_of
# =>
# [
#   :'WorkflowRunRelationshipsCreatorDataOneOf',
#   :'WorkflowRunRelationshipsCreatorDataOneOf1',
#   :'WorkflowRunRelationshipsCreatorDataOneOf2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::WorkflowRunRelationshipsCreatorData.build(data)
# => #<WorkflowRunRelationshipsCreatorDataOneOf:0x00007fdd4aab02a0>

PersonaAPIClient::WorkflowRunRelationshipsCreatorData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `WorkflowRunRelationshipsCreatorDataOneOf`
- `WorkflowRunRelationshipsCreatorDataOneOf1`
- `WorkflowRunRelationshipsCreatorDataOneOf2`
- `nil` (if no type matches)

