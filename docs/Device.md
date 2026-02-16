# PersonaAPIClient::Device

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | Unique identifier for this Device. Starts with &#x60;dev_&#x60;. | [optional] |
| **attributes** | [**DeviceAttributes**](DeviceAttributes.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::Device.new(
  type: null,
  id: null,
  attributes: null
)
```

