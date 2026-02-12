# PersonaAPIClient::DocumentGovernmentIdAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Possible values: - initiated - submitted - processed - errored  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **processed_at** | **Time** |  | [optional] |
| **processed_at_ts** | **Integer** |  | [optional] |
| **address_street_1** | **String** | Street name of residence address. | [optional] |
| **address_street_2** | **String** | Extension of residence address, usually apartment or suite number. | [optional] |
| **address_city** | **String** | City of residence address. Not all international addresses use this attribute. | [optional] |
| **address_subdivision** | **String** | State or subdivision of residence address. In the US, this should be the unabbreviated name. Not all international addresses use this attribute. | [optional] |
| **address_postal_code** | **String** | ZIP or postal code of residence address. Not all international addresses use this attribute. | [optional] |
| **front_photo** | [**Null**](Null.md) |  | [optional] |
| **back_photo** | [**Null**](Null.md) |  | [optional] |
| **selfie_photo** | [**Null**](Null.md) |  | [optional] |
| **id_class** | **String** |  | [optional] |
| **name_first** | **String** | Given or first name. | [optional] |
| **name_middle** | **String** | Middle name. | [optional] |
| **name_last** | **String** | Family or last name. | [optional] |
| **name_suffix** | **String** |  | [optional] |
| **native_name_first** | **String** | Native script given or first name. | [optional] |
| **native_name_middle** | **String** | Native script middle name. | [optional] |
| **native_name_last** | **String** | Native script family or last name. | [optional] |
| **native_name_title** | **String** | Native script name title or prefix. | [optional] |
| **birthdate** | **Date** |  | [optional] |
| **issuing_authority** | **String** |  | [optional] |
| **issuing_subdivision** | **String** |  | [optional] |
| **nationality** | **String** |  | [optional] |
| **document_number** | **String** |  | [optional] |
| **visa_status** | **String** |  | [optional] |
| **issue_date** | **Date** |  | [optional] |
| **expiration_date** | **Date** |  | [optional] |
| **designations** | **Array&lt;String&gt;** |  | [optional] |
| **birthplace** | **String** |  | [optional] |
| **height** | **String** |  | [optional] |
| **sex** | **String** |  | [optional] |
| **endorsements** | **String** |  | [optional] |
| **restrictions** | **String** |  | [optional] |
| **vehicle_class** | **String** |  | [optional] |
| **identification_number** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::DocumentGovernmentIdAttributes.new(
  status: null,
  created_at: null,
  processed_at: null,
  processed_at_ts: null,
  address_street_1: null,
  address_street_2: null,
  address_city: null,
  address_subdivision: null,
  address_postal_code: null,
  front_photo: null,
  back_photo: null,
  selfie_photo: null,
  id_class: null,
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
  height: null,
  sex: null,
  endorsements: null,
  restrictions: null,
  vehicle_class: null,
  identification_number: null
)
```

