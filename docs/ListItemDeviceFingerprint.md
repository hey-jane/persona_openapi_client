# PersonaAPIClient::ListItemDeviceFingerprint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;lidf_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemBrowserFingerprintAttributes**](ListItemBrowserFingerprintAttributes.md) |  | [optional] |
| **relationships** | [**ListItemBrowserFingerprintRelationships**](ListItemBrowserFingerprintRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemDeviceFingerprint.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

