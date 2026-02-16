# PersonaAPIClient::VerificationDatabaseSerpro

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The token of the verification | [optional] |
| **attributes** | [**VerificationDatabaseSerproAttributes**](VerificationDatabaseSerproAttributes.md) |  | [optional] |
| **relationships** | [**VerificationDatabaseSerproRelationships**](VerificationDatabaseSerproRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationDatabaseSerpro.new(
  type: null,
  id: ver_ABC123,
  attributes: null,
  relationships: null
)
```

