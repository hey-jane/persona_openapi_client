# PersonaAPIClient::ListItemEmailAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;liea_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemEmailAddressAttributes**](ListItemEmailAddressAttributes.md) |  | [optional] |
| **relationships** | [**ListItemEmailAddressRelationships**](ListItemEmailAddressRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemEmailAddress.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

