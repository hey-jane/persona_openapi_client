# PersonaAPIClient::VerificationDocumentAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the verification  Possible values: - initiated - submitted - passed - failed - requires_retry - canceled - confirmed  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **created_at** | **Time** | The time the verification was created in ISO 8601 format | [optional] |
| **created_at_ts** | **Integer** | The time the verification was created in Unix timestamp format | [optional] |
| **submitted_at** | **Time** | The time the verification was submitted in ISO 8601 format | [optional] |
| **submitted_at_ts** | **Integer** | The time the verification was submitted in Unix timestamp format | [optional] |
| **completed_at** | **Time** | The time the verification was completed in ISO 8601 format | [optional] |
| **completed_at_ts** | **Integer** | The time the verification was completed in Unix timestamp format | [optional] |
| **redacted_at** | **Time** | The time the verification was redacted in ISO 8601 format | [optional] |
| **country_code** | **String** | ISO 3166-1 alpha 2 country code. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags on the verification | [optional] |
| **checks** | [**Array&lt;VerificationSharedAttributesChecksInner&gt;**](VerificationSharedAttributesChecksInner.md) |  | [optional] |
| **fields** | **Object** | JSON key-value pairs of field name to field value. | [optional] |
| **files** | **Array&lt;File&gt;** | The files uploaded to the associated document for processing. | [optional] |
| **files_normalized** | **Array&lt;File&gt;** |  | [optional] |
| **extraction_responses** | [**Array&lt;ExtractionResponsesInner&gt;**](ExtractionResponsesInner.md) | A list of extractions resulting from processing the uploaded documents corresponding to the document&#39;s extraction configuration. | [optional] |
| **document_type** | **String** | Document classification assignment based on document content. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationDocumentAttributes.new(
  status: null,
  created_at: 2023-11-16T01:31:16.000Z,
  created_at_ts: 1700098276,
  submitted_at: 2023-11-16T01:31:16.000Z,
  submitted_at_ts: 1700098276,
  completed_at: 2023-11-16T01:31:16.000Z,
  completed_at_ts: 1700098276,
  redacted_at: 2023-11-16T01:31:16.000Z,
  country_code: US,
  tags: null,
  checks: null,
  fields: null,
  files: null,
  files_normalized: null,
  extraction_responses: null,
  document_type: null
)
```

