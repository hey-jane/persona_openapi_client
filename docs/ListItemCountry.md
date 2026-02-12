# PersonaAPIClient::ListItemCountry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;lic_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemCountryAttributes**](ListItemCountryAttributes.md) |  | [optional] |
| **relationships** | [**ListItemBrowserFingerprintRelationships**](ListItemBrowserFingerprintRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemCountry.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

