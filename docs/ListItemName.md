# PersonaAPIClient::ListItemName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;lin_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemNameAttributes**](ListItemNameAttributes.md) |  | [optional] |
| **relationships** | [**ListItemNameRelationships**](ListItemNameRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemName.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

