# PersonaAPIClient::InquiryAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the Inquiry  Possible values: - created - pending - completed - expired - failed - needs_review - approved - declined  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. |  |
| **reference_id** | **String** |  |  |
| **note** | **String** |  |  |
| **behaviors** | [**InquiryAttributesBehaviors**](InquiryAttributesBehaviors.md) |  |  |
| **tags** | **Array&lt;String&gt;** |  |  |
| **creator** | **String** |  |  |
| **reviewer_comment** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **started_at** | **Time** |  |  |
| **expires_at** | **Time** |  |  |
| **completed_at** | **Time** |  |  |
| **failed_at** | **Time** |  |  |
| **marked_for_review_at** | **Time** |  |  |
| **decisioned_at** | **Time** |  |  |
| **expired_at** | **Time** |  |  |
| **redacted_at** | **Time** |  |  |
| **previous_step_name** | **String** |  |  |
| **next_step_name** | **String** |  |  |
| **fields** | [**InquiryAttributesFields**](InquiryAttributesFields.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::InquiryAttributes.new(
  status: null,
  reference_id: null,
  note: null,
  behaviors: null,
  tags: null,
  creator: null,
  reviewer_comment: null,
  created_at: null,
  updated_at: null,
  started_at: null,
  expires_at: null,
  completed_at: null,
  failed_at: null,
  marked_for_review_at: null,
  decisioned_at: null,
  expired_at: null,
  redacted_at: null,
  previous_step_name: null,
  next_step_name: null,
  fields: null
)
```

