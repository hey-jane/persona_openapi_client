# PersonaAPIClient::VerificationGovernmentId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The token of the verification | [optional] |
| **attributes** | [**VerificationGovernmentIdAttributes**](VerificationGovernmentIdAttributes.md) |  | [optional] |
| **relationships** | [**VerificationDocumentRelationships**](VerificationDocumentRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationGovernmentId.new(
  type: null,
  id: ver_ABC123,
  attributes: null,
  relationships: null
)
```

