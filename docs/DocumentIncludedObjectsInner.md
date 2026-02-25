# PersonaAPIClient::DocumentIncludedObjectsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::DocumentIncludedObjectsInner.openapi_one_of
# =>
# [
#   :'DocumentFile',
#   :'Inquiry',
#   :'InquiryTemplate',
#   :'InquiryTemplateVersion',
#   :'Template',
#   :'Transaction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::DocumentIncludedObjectsInner.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::DocumentIncludedObjectsInner.openapi_discriminator_mapping
# =>
# {
#   :'document-file' => :'DocumentFile',
#   :'inquiry' => :'Inquiry',
#   :'inquiry-template' => :'InquiryTemplate',
#   :'inquiry-template-version' => :'InquiryTemplateVersion',
#   :'template' => :'Template',
#   :'transaction' => :'Transaction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::DocumentIncludedObjectsInner.build(data)
# => #<DocumentFile:0x00007fdd4aab02a0>

PersonaAPIClient::DocumentIncludedObjectsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DocumentFile`
- `Inquiry`
- `InquiryTemplate`
- `InquiryTemplateVersion`
- `Template`
- `Transaction`
- `nil` (if no type matches)

