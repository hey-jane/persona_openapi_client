# PersonaAPIClient::ListItemPhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;lipn_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemBrowserFingerprintAttributes**](ListItemBrowserFingerprintAttributes.md) |  | [optional] |
| **relationships** | [**ListItemPhoneNumberRelationships**](ListItemPhoneNumberRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemPhoneNumber.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

