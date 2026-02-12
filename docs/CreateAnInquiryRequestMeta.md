# PersonaAPIClient::CreateAnInquiryRequestMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_create_account** | **Boolean** | If true, automatically create an Account for the user if one does not exist. Default is true. | [optional] |
| **auto_create_account_type_id** | **String** | If &#x60;auto-create-account&#x60; is true, the type ID to use for the Account. If not provided, the default type ID for the organization will be used. If &#x60;auto-create-account-reference-id&#x60; is present and corresponds to an existing Account, &#x60;auto-create-account-type-id&#x60; will be ignored. Will error if passed when &#x60;auto-create-account&#x60; is false. | [optional] |
| **auto_create_account_reference_id** | **String** | If &#x60;auto-create-account&#x60; is true, this Inquiry will be attached to the Account with this reference ID, or a new Account will be created with this reference ID if one does not exist. Will error if passed when &#x60;auto-create-account&#x60; is false. | [optional] |
| **auto_create_inquiry_session** | **Boolean** | If true, automatically create an Inquiry Session token for the Inquiry. | [optional] |
| **auto_create_one_time_link** | **Boolean** | If true, automatically create a One-Time Link URL for the Inquiry. | [optional] |
| **expiration_after_create_interval_seconds** | **Integer** | Time interval from inquiry creation after which an Inquiry expires and the flow can no longer be accessed. Overrides value set at the template level. | [optional] |
| **expiration_after_start_interval_seconds** | **Integer** | Time interval from inquiry start after which an Inquiry expires and the flow can no longer be accessed. Overrides value set at the template level. | [optional] |
| **expiration_after_resume_interval_seconds** | **Integer** | Time interval from inquiry start after which an Inquiry expires and the flow can no longer be accessed. Overrides value set at the template level. | [optional] |
| **one_time_link_expiration_seconds** | **Integer** | Time interval after which Device Handoff one time links expire. Overrides value set at the template level. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAnInquiryRequestMeta.new(
  auto_create_account: null,
  auto_create_account_type_id: null,
  auto_create_account_reference_id: null,
  auto_create_inquiry_session: null,
  auto_create_one_time_link: null,
  expiration_after_create_interval_seconds: null,
  expiration_after_start_interval_seconds: null,
  expiration_after_resume_interval_seconds: null,
  one_time_link_expiration_seconds: null
)
```

