# PersonaAPIClient::UpdateAGovernmentIdDocumentRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_photo** | [**UpdateAGovernmentIdDocumentRequestDataAttributesBackPhoto**](UpdateAGovernmentIdDocumentRequestDataAttributesBackPhoto.md) |  | [optional] |
| **front_photo** | [**CreateAGovernmentIdDocumentRequestDataAttributesFrontPhoto**](CreateAGovernmentIdDocumentRequestDataAttributesFrontPhoto.md) |  | [optional] |
| **selected_country_code** | **String** |  | [optional] |
| **selected_id_class** | **AnyOfstring&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateAGovernmentIdDocumentRequestDataAttributes.new(
  back_photo: null,
  front_photo: null,
  selected_country_code: null,
  selected_id_class: null
)
```

