# PersonaAPIClient::ListItemGovernmentIdNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;ligin_&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **attributes** | [**ListItemGovernmentIdNumberAttributes**](ListItemGovernmentIdNumberAttributes.md) |  | [optional] |
| **relationships** | [**ListItemGovernmentIdNumberRelationships**](ListItemGovernmentIdNumberRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemGovernmentIdNumber.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```

