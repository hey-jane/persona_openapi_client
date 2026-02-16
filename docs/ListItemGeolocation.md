# PersonaAPIClient::ListItemGeolocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;ligl_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemGeolocationAttributes**](ListItemGeolocationAttributes.md) |  | [optional] |
| **relationships** | [**ListItemGeolocationRelationships**](ListItemGeolocationRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemGeolocation.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

