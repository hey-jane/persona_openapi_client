# PersonaAPIClient::DocumentSharedRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry** | [**DocumentSharedRelationshipsInquiry**](DocumentSharedRelationshipsInquiry.md) |  | [optional] |
| **template** | [**DocumentSharedRelationshipsTemplate**](DocumentSharedRelationshipsTemplate.md) |  | [optional] |
| **inquiry_template_version** | [**DocumentSharedRelationshipsInquiryTemplateVersion**](DocumentSharedRelationshipsInquiryTemplateVersion.md) |  | [optional] |
| **inquiry_template** | [**DocumentSharedRelationshipsInquiryTemplate**](DocumentSharedRelationshipsInquiryTemplate.md) |  | [optional] |
| **transaction** | [**VerificationSharedRelationshipsTransaction**](VerificationSharedRelationshipsTransaction.md) |  | [optional] |
| **document_files** | [**DocumentSharedRelationshipsDocumentFiles**](DocumentSharedRelationshipsDocumentFiles.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::DocumentSharedRelationships.new(
  inquiry: null,
  template: null,
  inquiry_template_version: null,
  inquiry_template: null,
  transaction: null,
  document_files: null
)
```

