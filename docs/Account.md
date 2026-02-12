# PersonaAPIClient::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **attributes** | [**AccountAttributes**](AccountAttributes.md) |  | [optional] |
| **relationships** | [**AccountRelationships**](AccountRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::Account.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

