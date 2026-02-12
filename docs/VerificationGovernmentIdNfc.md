# PersonaAPIClient::VerificationGovernmentIdNfc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The token of the verification | [optional] |
| **attributes** | [**VerificationGovernmentIdNfcAttributes**](VerificationGovernmentIdNfcAttributes.md) |  | [optional] |
| **relationships** | [**VerificationDocumentRelationships**](VerificationDocumentRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationGovernmentIdNfc.new(
  type: null,
  id: ver_ABC123,
  attributes: null,
  relationships: null
)
```

