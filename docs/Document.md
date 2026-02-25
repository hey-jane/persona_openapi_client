# PersonaAPIClient::Document

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::Document.openapi_one_of
# =>
# [
#   :'DocumentGeneric',
#   :'DocumentGovernmentId',
#   :'DocumentGovernmentIdNfc',
#   :'DocumentMobileDriversLicense'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::Document.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::Document.openapi_discriminator_mapping
# =>
# {
#   :'document/generic' => :'DocumentGeneric',
#   :'document/government-id' => :'DocumentGovernmentId',
#   :'document/government-id-nfc' => :'DocumentGovernmentIdNfc',
#   :'document/mobile-drivers-license' => :'DocumentMobileDriversLicense'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::Document.build(data)
# => #<DocumentGeneric:0x00007fdd4aab02a0>

PersonaAPIClient::Document.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DocumentGeneric`
- `DocumentGovernmentId`
- `DocumentGovernmentIdNfc`
- `DocumentMobileDriversLicense`
- `nil` (if no type matches)

