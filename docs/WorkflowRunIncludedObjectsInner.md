# PersonaAPIClient::WorkflowRunIncludedObjectsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::WorkflowRunIncludedObjectsInner.openapi_one_of
# =>
# [
#   :'Event',
#   :'User',
#   :'Workflow',
#   :'WorkflowVersion'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::WorkflowRunIncludedObjectsInner.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::WorkflowRunIncludedObjectsInner.openapi_discriminator_mapping
# =>
# {
#   :'event' => :'Event',
#   :'user' => :'User',
#   :'workflow' => :'Workflow',
#   :'workflow-version' => :'WorkflowVersion'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::WorkflowRunIncludedObjectsInner.build(data)
# => #<Event:0x00007fdd4aab02a0>

PersonaAPIClient::WorkflowRunIncludedObjectsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Event`
- `User`
- `Workflow`
- `WorkflowVersion`
- `nil` (if no type matches)

