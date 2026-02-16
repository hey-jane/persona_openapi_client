# PersonaAPIClient::CreateAnAccountRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type_id** | **String** | Account Type ID to create the account for. Starts with &#x60;acttp_&#x60;. | [optional] |
| **account_status** | **String** | Name of the status to set on this Account. | [optional] |
| **reference_id** | **String** | Reference ID on Account, refers to an entity in your user model | [optional] |
| **selfie_photo** | [**CreateAnAccountRequestDataAttributesAllOfSelfiePhoto**](CreateAnAccountRequestDataAttributesAllOfSelfiePhoto.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tag names to be associated with the Account. | [optional] |
| **country_code** | **String** | ISO 3166-1 alpha 2 country code. | [optional] |
| **social_security_number** | **String** | Social security number. | [optional] |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Schema is defined by your Account Type. | [optional] |
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

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAnAccountRequestDataAttributes.new(
  account_type_id: null,
  account_status: null,
  reference_id: null,
  selfie_photo: null,
  tags: null,
  country_code: null,
  social_security_number: null,
  fields: null,
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
  address_postal_code: null
)
```

