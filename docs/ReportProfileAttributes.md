# PersonaAPIClient::ReportProfileAttributes

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
| **name_first** | **String** | Given or first name. | [optional] |
| **name_last** | **String** | Family or last name. | [optional] |
| **birthdate** | **Date** | Birthdate, must be in the format \&quot;YYYY-MM-DD\&quot;. | [optional] |
| **social_security_number** | **String** | Full social security number. | [optional] |
| **social_security_number_last_4** | **String** | Last 4 digits of social security number. | [optional] |
| **address_street_1** | **String** | Primary street address. | [optional] |
| **address_street_2** | **String** | Secondary street address (if any). | [optional] |
| **address_city** | **String** | City of residence. | [optional] |
| **address_subdivision** | **String** | State or subdivision of residence. | [optional] |
| **address_subdivision_abbr** | **String** | State or subdivision abbreviation. | [optional] |
| **address_postal_code** | **String** | ZIP or postal code. | [optional] |
| **address_postal_code_abbr** | **String** | ZIP or postal code abbreviation (if applicable). | [optional] |
| **phone_number** | **String** | Phone number. | [optional] |
| **identity_records** | [**Array&lt;ReportProfileAttributesAllOfIdentityRecordsInner&gt;**](ReportProfileAttributesAllOfIdentityRecordsInner.md) | Detailed identity records which passed matching logic, if available. | [optional] |
| **omitted_identity_records** | [**Array&lt;ReportProfileAttributesAllOfIdentityRecordsInner&gt;**](ReportProfileAttributesAllOfIdentityRecordsInner.md) | Detailed identity records which did not pass matching logic, if available. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportProfileAttributes.new(
  status: null,
  created_at: 2020-04-12T05:08:51.000Z,
  completed_at: 2020-04-13T00:23:57.000Z,
  redacted_at: null,
  report_template_version_name: v1,
  has_match: null,
  is_continuous: null,
  is_recurring: null,
  tags: null,
  name_first: null,
  name_last: null,
  birthdate: null,
  social_security_number: null,
  social_security_number_last_4: null,
  address_street_1: null,
  address_street_2: null,
  address_city: null,
  address_subdivision: null,
  address_subdivision_abbr: null,
  address_postal_code: null,
  address_postal_code_abbr: null,
  phone_number: null,
  identity_records: null,
  omitted_identity_records: null
)
```

