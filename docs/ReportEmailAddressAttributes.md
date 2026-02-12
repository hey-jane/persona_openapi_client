# PersonaAPIClient::ReportEmailAddressAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the report  Possible values: - pending - ready - errored  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **created_at** | **String** | The time the report was created in ISO 8601 format | [optional] |
| **completed_at** | **String** | The time the report completed processing in ISO 8601 format | [optional] |
| **redacted_at** | **String** | The time the report was redacted in ISO 8601 format | [optional] |
| **report_template_version_name** | **String** | The name of the report template version used for this report | [optional] |
| **has_match** | **Boolean** | Whether or not the report matched | [optional] |
| **is_continuous** | **Boolean** | Whether or not this report has been run more than once | [optional] |
| **is_recurring** | **Boolean** | Whether or not this report is scheduled to run in the future | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags on the report | [optional] |
| **email_address** | **String** | The input email address of the search | [optional] |
| **email_reputation** | **String** | The reputation of the email provided  Possible values: - high - medium - low  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **email_reference_count** | **Integer** | The number of sources used to determine the reputation (Deprecated) | [optional] |
| **email_domain_reputation** | **String** | The reputation of the email domain provided (Deprecated)  Possible values: - high - medium - low  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **email_first_seen_days** | **Integer** | How many days it has ben since the email was first seen in attack (Deprecated) | [optional] |
| **email_last_seen_days** | **Integer** | How many days it has been since the email was last seen (Deprecated) | [optional] |
| **email_estimated_age_days** | **Integer** | The estimated age of the email in days | [optional] |
| **email_domain_age_days** | **Integer** | The estimated age of the domain in days | [optional] |
| **email_credentials_leaked** | **Boolean** | Whether the email has ever been detected to have been leaked (Deprecated) | [optional] |
| **email_credentials_leaked_recent** | **Boolean** | Whether the email has been recently detected as leaked | [optional] |
| **email_data_breached** | **Boolean** | Whether the email was involved in a data breach (Deprecated) | [optional] |
| **email_malicious_activity_detected** | **Boolean** | Whether the email has ever been detected for suspected malicious activity (Deprecated) | [optional] |
| **email_malicious_activity_detected_recent** | **Boolean** | Whether the email has recently been detected for suspected malicious activity | [optional] |
| **email_is_blocklisted** | **Boolean** | Whether the email appears on blocklists (Deprecated) | [optional] |
| **email_is_spam** | **Boolean** | Whether the email is spam or a spam trap | [optional] |
| **email_is_free_provider** | **Boolean** | Whether the email was made with a free provider (Deprecated) | [optional] |
| **email_is_disposable** | **Boolean** | Whether the email is one that is disposable or temporary | [optional] |
| **email_is_deliverable** | **Boolean** | Whether the email is deliverable | [optional] |
| **email_is_valid_mx** | **Boolean** | Whether the domain has a valid MX record | [optional] |
| **email_is_spoofable** | **Boolean** | Whether the email can be spoofed. (E.G. not a strict SPF policy or DMARC not enforced. Deprecated) | [optional] |
| **email_is_spf_strict** | **Boolean** | Whether there is a sufficiently strict SPF record (Deprecated) | [optional] |
| **email_is_dmarc_enforced** | **Boolean** | Whether DMARC is configured correctly and enforced (Deprecated) | [optional] |
| **age_estimated_13_plus** | **Boolean** | Whether email address user is 13 or older | [optional] |
| **age_estimated_16_plus** | **Boolean** | Whether email address user is 16 or older | [optional] |
| **age_estimated_18_plus** | **Boolean** | Whether email address user is 18 or older | [optional] |
| **email_is_suspicious** | **Boolean** | Whether the email is suspicious or risky | [optional] |
| **email_domain_exists** | **Boolean** | Whether the domain of the email exists | [optional] |
| **email_domain** | **String** | The domain of the email | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportEmailAddressAttributes.new(
  status: null,
  created_at: 2020-04-12T05:08:51.000Z,
  completed_at: 2020-04-13T00:23:57.000Z,
  redacted_at: null,
  report_template_version_name: v1,
  has_match: null,
  is_continuous: null,
  is_recurring: null,
  tags: null,
  email_address: example@domain.com,
  email_reputation: null,
  email_reference_count: 4,
  email_domain_reputation: null,
  email_first_seen_days: 71,
  email_last_seen_days: 250,
  email_estimated_age_days: 410,
  email_domain_age_days: 410,
  email_credentials_leaked: true,
  email_credentials_leaked_recent: true,
  email_data_breached: true,
  email_malicious_activity_detected: true,
  email_malicious_activity_detected_recent: true,
  email_is_blocklisted: true,
  email_is_spam: true,
  email_is_free_provider: true,
  email_is_disposable: true,
  email_is_deliverable: true,
  email_is_valid_mx: true,
  email_is_spoofable: true,
  email_is_spf_strict: true,
  email_is_dmarc_enforced: true,
  age_estimated_13_plus: true,
  age_estimated_16_plus: true,
  age_estimated_18_plus: true,
  email_is_suspicious: true,
  email_domain_exists: true,
  email_domain: gmail.com
)
```

