# PersonaAPIClient::ListItemField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;liif_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemFieldAttributes**](ListItemFieldAttributes.md) |  | [optional] |
| **relationships** | [**ListItemBrowserFingerprintRelationships**](ListItemBrowserFingerprintRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemField.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

