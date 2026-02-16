# PersonaAPIClient::CreateAGovernmentIdDocumentRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_photo** | [**CreateAGovernmentIdDocumentRequestDataAttributesBackPhoto**](CreateAGovernmentIdDocumentRequestDataAttributesBackPhoto.md) |  | [optional] |
| **country_code** | **String** | ISO 3166-1 alpha-2 code of the ID’s issuing country. |  |
| **front_photo** | [**CreateAGovernmentIdDocumentRequestDataAttributesFrontPhoto**](CreateAGovernmentIdDocumentRequestDataAttributesFrontPhoto.md) |  | [optional] |
| **inquiry_id** | **String** |  |  |
| **account_id** | **String** |  | [optional] |
| **selected_country_code** | **String** |  | [optional] |
| **selected_id_class** | **AnyOfstring&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAGovernmentIdDocumentRequestDataAttributes.new(
  back_photo: null,
  country_code: null,
  front_photo: null,
  inquiry_id: null,
  account_id: null,
  selected_country_code: null,
  selected_id_class: null
)
```

