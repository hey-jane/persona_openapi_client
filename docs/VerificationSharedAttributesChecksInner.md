# PersonaAPIClient::VerificationSharedAttributesChecksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **status** | **String** | Possible values: - passed - failed - not_applicable  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **reasons** | **Array&lt;String&gt;** | If applicable, reasons are the list of reasons explaining why the check failed or is not applicable. | [optional] |
| **requirement** | **String** | Possible values: - required - not_required - requires_retry  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | This is a free-form object containing relevant metadata to the processing and result of the check. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationSharedAttributesChecksInner.new(
  name: null,
  status: null,
  reasons: null,
  requirement: null,
  metadata: null
)
```

