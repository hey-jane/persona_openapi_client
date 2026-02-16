# PersonaAPIClient::InquiryAttributesFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_first** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **name_middle** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **name_last** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **address_street_1** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **address_street_2** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **address_city** | [**InquiryAttributesFieldsAddressCity**](InquiryAttributesFieldsAddressCity.md) |  | [optional] |
| **address_subdivision** | [**InquiryAttributesFieldsAddressSubdivision**](InquiryAttributesFieldsAddressSubdivision.md) |  | [optional] |
| **address_postal_code** | [**InquiryAttributesFieldsAddressPostalCode**](InquiryAttributesFieldsAddressPostalCode.md) |  | [optional] |
| **address_country_code** | [**InquiryAttributesFieldsAddressCountryCode**](InquiryAttributesFieldsAddressCountryCode.md) |  | [optional] |
| **birthdate** | [**InquiryAttributesFieldsBirthdate**](InquiryAttributesFieldsBirthdate.md) |  | [optional] |
| **email_address** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **phone_number** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **identification_number** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::InquiryAttributesFields.new(
  name_first: null,
  name_middle: null,
  name_last: null,
  address_street_1: null,
  address_street_2: null,
  address_city: null,
  address_subdivision: null,
  address_postal_code: null,
  address_country_code: null,
  birthdate: null,
  email_address: null,
  phone_number: null,
  identification_number: null
)
```

