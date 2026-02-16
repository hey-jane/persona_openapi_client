# PersonaAPIClient::UpdateADocumentRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files** | **Array&lt;Array&lt;Object&gt;&gt;** | Files to upload for this document. | [optional] |
| **kind** | **String** | Identifier for this document, e.g. \&quot;proof_of_employment\&quot; | [optional] |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Schema is defined by your template. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateADocumentRequestDataAttributes.new(
  files: null,
  kind: null,
  fields: null
)
```

