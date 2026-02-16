# PersonaAPIClient::VerificationGovernmentIdAttributes

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
| **address_street_1** | **String** | Street name of residence address. | [optional] |
| **address_street_2** | **String** | Extension of residence address, usually apartment or suite number. | [optional] |
| **address_city** | **String** | City of residence address. Not all international addresses use this attribute. | [optional] |
| **address_subdivision** | **String** | State or subdivision of residence address. In the US, this should be the unabbreviated name. Not all international addresses use this attribute. | [optional] |
| **address_postal_code** | **String** | ZIP or postal code of residence address. Not all international addresses use this attribute. | [optional] |
| **entity_confidence_reasons** | **Array&lt;String&gt;** |  | [optional] |
| **entity_confidence_score** | **Float** |  | [optional][default to 0] |
| **front_photo_url** | **String** |  | [optional] |
| **back_photo_url** | **String** |  | [optional] |
| **photo_urls** | [**Array&lt;VerificationGovernmentIdAttributesAllOfPhotoUrlsInner&gt;**](VerificationGovernmentIdAttributesAllOfPhotoUrlsInner.md) |  | [optional] |
| **selfie_photo** | [**VerificationGovernmentIdAttributesAllOfSelfiePhoto**](VerificationGovernmentIdAttributesAllOfSelfiePhoto.md) |  | [optional] |
| **selfie_photo_url** | **String** |  | [optional] |
| **video_url** | **String** |  | [optional] |
| **id_class** | **String** |  | [optional] |
| **capture_method** | **String** |  | [optional] |
| **name_first** | **String** |  | [optional] |
| **name_middle** | **String** |  | [optional] |
| **name_last** | **String** |  | [optional] |
| **name_suffix** | **String** |  | [optional] |
| **native_name_first** | **String** | Native script given or first name. | [optional] |
| **native_name_middle** | **String** | Native script middle name. | [optional] |
| **native_name_last** | **String** | Native script family or last name. | [optional] |
| **native_name_title** | **String** | Native script name title or prefix. | [optional] |
| **birthdate** | **String** |  | [optional] |
| **issuing_authority** | **String** |  | [optional] |
| **issuing_subdivision** | **String** |  | [optional] |
| **nationality** | **String** |  | [optional] |
| **document_number** | **String** |  | [optional] |
| **visa_status** | **String** |  | [optional] |
| **issue_date** | **String** |  | [optional] |
| **expiration_date** | **String** |  | [optional] |
| **designations** | **Array&lt;Object&gt;** |  | [optional] |
| **birthplace** | **String** |  | [optional] |
| **endorsements** | **String** |  | [optional] |
| **height** | **String** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **restrictions** | **String** |  | [optional] |
| **vehicle_class** | **String** |  | [optional] |
| **identification_number** | **String** |  | [optional] |
| **from_reusable_persona** | **Boolean** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::VerificationGovernmentIdAttributes.new(
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
  address_street_1: null,
  address_street_2: null,
  address_city: null,
  address_subdivision: null,
  address_postal_code: null,
  entity_confidence_reasons: null,
  entity_confidence_score: null,
  front_photo_url: null,
  back_photo_url: null,
  photo_urls: null,
  selfie_photo: null,
  selfie_photo_url: null,
  video_url: https://files.withpersona.com/...,
  id_class: null,
  capture_method: null,
  name_first: null,
  name_middle: null,
  name_last: null,
  name_suffix: null,
  native_name_first: null,
  native_name_middle: null,
  native_name_last: null,
  native_name_title: null,
  birthdate: null,
  issuing_authority: null,
  issuing_subdivision: null,
  nationality: null,
  document_number: null,
  visa_status: null,
  issue_date: null,
  expiration_date: null,
  designations: null,
  birthplace: null,
  endorsements: null,
  height: null,
  sex: null,
  restrictions: null,
  vehicle_class: null,
  identification_number: null,
  from_reusable_persona: null
)
```

