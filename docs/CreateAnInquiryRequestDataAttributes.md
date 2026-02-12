# PersonaAPIClient::CreateAnInquiryRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | Template ID for flow requirements (use this field if your template ID starts with &#x60;tmpl_&#x60;). *You must pass in either template-id OR inquiry-template-id OR inquiry-template-version-id* | [optional] |
| **inquiry_template_id** | **String** | Template ID for flow requirements (use this field if your template ID starts with &#x60;itmpl_&#x60;). *You must pass in either template-id OR inquiry-template-id OR inquiry-template-version-id* | [optional] |
| **inquiry_template_version_id** | **String** | Template Version ID for flow requirements (begins with &#x60;itmplv_&#x60;). *You must pass in either template-id OR inquiry-template-id OR inquiry-template-version-id* | [optional] |
| **reference_id** | **String** | Reference ID to refer to an entity in your user model. This field is deprecated in favor of &#x60;meta.auto-create-account-reference-id&#x60;. | [optional] |
| **account_id** | **String** | Account ID to associate with this inquiry | [optional] |
| **creator_email_address** | **String** | Email of the user creating this inquiry in the organization | [optional] |
| **theme_id** | **String** | Theme ID for styling. Only available for Legacy 2.0 Inquiries. | [optional] |
| **theme_set_id** | **String** | BETA FEATURE -- Theme Set ID for styling. Only available for Dynamic Flow Inquiries. | [optional] |
| **redirect_uri** | **String** | If using the Hosted flow, redirect to this URL after completion | [optional] |
| **note** | **String** | Unstructured field for your custom use | [optional] |
| **fields** | [**InquiryFields**](InquiryFields.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tag names to be associated with the Inquiry. | [optional] |
| **initial_step_name** | **String** | BETA FEATURE -- Specify an alternate initial step. Only available for Dynamic Flow Inquiries. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAnInquiryRequestDataAttributes.new(
  template_id: null,
  inquiry_template_id: null,
  inquiry_template_version_id: null,
  reference_id: null,
  account_id: null,
  creator_email_address: null,
  theme_id: null,
  theme_set_id: null,
  redirect_uri: null,
  note: null,
  fields: null,
  tags: null,
  initial_step_name: null
)
```

