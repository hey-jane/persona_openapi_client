# PersonaAPIClient::AccountAttributesFieldsAddressValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_1** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **street_2** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **subdivision** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **city** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **postal_code** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |
| **country_code** | [**AccountAttributesFieldsNameValueFirst**](AccountAttributesFieldsNameValueFirst.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::AccountAttributesFieldsAddressValue.new(
  street_1: null,
  street_2: null,
  subdivision: null,
  city: null,
  postal_code: null,
  country_code: null
)
```

