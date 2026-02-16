# PersonaAPIClient::VerificationDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The token of the verification | [optional] |
| **attributes** | [**VerificationDocumentAttributes**](VerificationDocumentAttributes.md) |  | [optional] |
| **relationships** | [**VerificationDocumentRelationships**](VerificationDocumentRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationDocument.new(
  type: null,
  id: ver_ABC123,
  attributes: null,
  relationships: null
)
```

