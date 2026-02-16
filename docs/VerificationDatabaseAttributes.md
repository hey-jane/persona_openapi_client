# PersonaAPIClient::VerificationDatabaseAttributes

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
| **birthdate** | **Date** | Birthdate, must be in the format \&quot;YYYY-MM-DD\&quot;. | [optional] |
| **name_first** | **String** | Given or first name. | [optional] |
| **name_middle** | **String** | Middle name. | [optional] |
| **name_last** | **String** | Family or last name. | [optional] |
| **phone_number** | **String** | Phone number. | [optional] |
| **email_address** | **String** | Email address. | [optional] |
| **address_street_1** | **String** | Street name of residence address. | [optional] |
| **address_street_2** | **String** | Extension of residence address, usually apartment or suite number. | [optional] |
| **address_city** | **String** | City of residence address. Not all international addresses use this attribute. | [optional] |
| **address_subdivision** | **String** | State or subdivision of residence address. In the US, this should be the unabbreviated name. Not all international addresses use this attribute. | [optional] |
| **address_postal_code** | **String** | ZIP or postal code of residence address. Not all international addresses use this attribute. | [optional] |
| **normalized_address_street_1** | **String** | Normalized street name of residence address. | [optional] |
| **normalized_address_street_2** | **String** | Normalized extension of residence address, usually apartment or suite number. | [optional] |
| **normalized_address_city** | **String** | Normalized city of residence address. Not all international addresses use this attribute. | [optional] |
| **normalized_address_subdivision** | **String** | Normalized state or subdivision of residence address. In the US, this should be the abbreviated name. Not all international addresses use this attribute. | [optional] |
| **normalized_address_postal_code** | **String** | Normalized ZIP or postal code of residence address. Not all international addresses use this attribute. | [optional] |
| **identification_number** | **String** |  | [optional] |
| **document_number** | **String** |  | [optional] |
| **document_issuing_date** | **String** |  | [optional] |
| **document_expiry_date** | **String** |  | [optional] |
| **document_issuing_subdivision** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationDatabaseAttributes.new(
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
  birthdate: null,
  name_first: null,
  name_middle: null,
  name_last: null,
  phone_number: null,
  email_address: null,
  address_street_1: null,
  address_street_2: null,
  address_city: null,
  address_subdivision: null,
  address_postal_code: null,
  normalized_address_street_1: null,
  normalized_address_street_2: null,
  normalized_address_city: null,
  normalized_address_subdivision: null,
  normalized_address_postal_code: null,
  identification_number: null,
  document_number: null,
  document_issuing_date: null,
  document_expiry_date: null,
  document_issuing_subdivision: null
)
```

