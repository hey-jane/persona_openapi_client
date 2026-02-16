# PersonaAPIClient::VerificationSharedRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry** | [**VerificationSharedRelationshipsInquiry**](VerificationSharedRelationshipsInquiry.md) |  | [optional] |
| **template** | [**VerificationSharedRelationshipsTemplate**](VerificationSharedRelationshipsTemplate.md) |  | [optional] |
| **inquiry_template_version** | [**VerificationSharedRelationshipsInquiryTemplateVersion**](VerificationSharedRelationshipsInquiryTemplateVersion.md) |  | [optional] |
| **inquiry_template** | [**VerificationSharedRelationshipsInquiryTemplate**](VerificationSharedRelationshipsInquiryTemplate.md) |  | [optional] |
| **transaction** | [**VerificationSharedRelationshipsTransaction**](VerificationSharedRelationshipsTransaction.md) |  | [optional] |
| **verification_template** | [**VerificationSharedRelationshipsVerificationTemplate**](VerificationSharedRelationshipsVerificationTemplate.md) |  | [optional] |
| **verification_template_version** | [**VerificationSharedRelationshipsVerificationTemplateVersion**](VerificationSharedRelationshipsVerificationTemplateVersion.md) |  | [optional] |
| **accounts** | [**CaseRelationshipsAccounts**](CaseRelationshipsAccounts.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationSharedRelationships.new(
  inquiry: null,
  template: null,
  inquiry_template_version: null,
  inquiry_template: null,
  transaction: null,
  verification_template: null,
  verification_template_version: null,
  accounts: null
)
```

