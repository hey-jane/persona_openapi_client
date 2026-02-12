# PersonaAPIClient::List

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **attributes** | [**ListsSharedAttributes**](ListsSharedAttributes.md) |  | [optional] |
| **relationships** | [**ListsPhoneNumbersRelationships**](ListsPhoneNumbersRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::List.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

