# PersonaAPIClient::DocumentGenericAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Possible values: - initiated - submitted - processed - errored  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **processed_at** | **Time** |  | [optional] |
| **processed_at_ts** | **Integer** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **files** | [**Array&lt;Null&gt;**](Null.md) | The files uploaded to the document for processing. | [optional] |
| **files_normalized** | [**Array&lt;Null&gt;**](Null.md) |  | [optional] |
| **extraction_responses** | [**Array&lt;ExtractionResponsesInner&gt;**](ExtractionResponsesInner.md) | A list of extractions resulting from processing the uploaded documents corresponding to the document&#39;s extraction configuration. | [optional] |
| **document_type** | **String** | The classification of the document if detected. If unable to be detected, this will be other. | [optional] |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Exact schema depends on the configuration of your template. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::DocumentGenericAttributes.new(
  status: null,
  created_at: null,
  processed_at: null,
  processed_at_ts: null,
  kind: null,
  files: null,
  files_normalized: null,
  extraction_responses: null,
  document_type: null,
  fields: null
)
```

