# PersonaAPIClient::VerificationDatabaseEcbsvAttributes

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
| **name_first** | **String** | First name of the individual. | [optional] |
| **name_last** | **String** | Last name of the individual. | [optional] |
| **birthdate** | **Date** | Birthdate of the individual | [optional] |
| **email_address** | **String** | Email address of the individual. | [optional] |
| **identification_number** | **String** | Social Security Number of the individual. | [optional] |
| **signature_timestamp** | **Time** | Timestamp of the signature | [optional] |
| **signature_ip** | **String** | IP address of the individual | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationDatabaseEcbsvAttributes.new(
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
  name_first: null,
  name_last: null,
  birthdate: null,
  email_address: null,
  identification_number: null,
  signature_timestamp: null,
  signature_ip: null
)
```

