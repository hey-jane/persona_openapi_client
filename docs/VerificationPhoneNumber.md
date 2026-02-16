# PersonaAPIClient::VerificationPhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The token of the verification | [optional] |
| **attributes** | [**VerificationPhoneNumberAttributes**](VerificationPhoneNumberAttributes.md) |  | [optional] |
| **relationships** | [**VerificationSharedRelationships**](VerificationSharedRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationPhoneNumber.new(
  type: null,
  id: ver_ABC123,
  attributes: null,
  relationships: null
)
```

