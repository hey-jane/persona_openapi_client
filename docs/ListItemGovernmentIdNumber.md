# OpenapiClient::ListItemGovernmentIdNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this list item. Starts with &#x60;ligin_&#x60;. | [optional] |
| **type** | **String** | list-item/government-id-number | [optional] |
| **attributes** | [**ListItemGovernmentIdNumberAttributes**](ListItemGovernmentIdNumberAttributes.md) |  | [optional] |
| **relationships** | [**ListItemGovernmentIdNumberRelationships**](ListItemGovernmentIdNumberRelationships.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListItemGovernmentIdNumber.new(
  id: null,
  type: null,
  attributes: null,
  relationships: null
)
```
