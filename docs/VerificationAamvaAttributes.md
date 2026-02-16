# PersonaAPIClient::VerificationAamvaAttributes

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
| **name_first** | **String** | Given or first name. | [optional] |
| **name_last** | **String** | Family or last name. | [optional] |
| **birthdate** | **Date** | Birthdate, must be in the format \&quot;YYYY-MM-DD\&quot;. | [optional] |
| **issue_date** | **Date** |  | [optional] |
| **expiration_date** | **Date** |  | [optional] |
| **address_postal_code** | **String** |  | [optional] |
| **issuing_authority** | **String** |  | [optional] |
| **identification_number** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationAamvaAttributes.new(
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
  name_first: Jane,
  name_last: Doe,
  birthdate: 1994-04-12,
  issue_date: 2021-05-27,
  expiration_date: 2029-05-08,
  address_postal_code: 94115-1010,
  issuing_authority: CA,
  identification_number: B12345678
)
```

