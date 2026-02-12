# PersonaAPIClient::AccountAttributesFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**AccountAttributesFieldsName**](AccountAttributesFieldsName.md) |  | [optional] |
| **address** | [**AccountAttributesFieldsAddress**](AccountAttributesFieldsAddress.md) |  | [optional] |
| **identification_numbers** | [**AccountAttributesFieldsIdentificationNumbers**](AccountAttributesFieldsIdentificationNumbers.md) |  | [optional] |
| **birthdate** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **phone_number** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **email_address** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **selfie_photo** | [**AccountAttributesFieldsSelfiePhoto**](AccountAttributesFieldsSelfiePhoto.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::AccountAttributesFields.new(
  name: null,
  address: null,
  identification_numbers: null,
  birthdate: null,
  phone_number: null,
  email_address: null,
  selfie_photo: null
)
```

