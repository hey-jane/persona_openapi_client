# PersonaAPIClient::InquirySessionsIncludedObjectsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquirySessionsIncludedObjectsInner.openapi_one_of
# =>
# [
#   :'Device',
#   :'Inquiry'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquirySessionsIncludedObjectsInner.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquirySessionsIncludedObjectsInner.openapi_discriminator_mapping
# =>
# {
#   :'device' => :'Device',
#   :'inquiry' => :'Inquiry'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquirySessionsIncludedObjectsInner.build(data)
# => #<Device:0x00007fdd4aab02a0>

PersonaAPIClient::InquirySessionsIncludedObjectsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Device`
- `Inquiry`
- `nil` (if no type matches)

