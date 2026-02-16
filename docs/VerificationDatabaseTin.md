# PersonaAPIClient::VerificationDatabaseTin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The token of the verification | [optional] |
| **attributes** | [**VerificationDatabaseTinAttributes**](VerificationDatabaseTinAttributes.md) |  | [optional] |
| **relationships** | [**VerificationSharedRelationships**](VerificationSharedRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationDatabaseTin.new(
  type: null,
  id: ver_ABC123,
  attributes: null,
  relationships: null
)
```

