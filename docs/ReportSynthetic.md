# PersonaAPIClient::ReportSynthetic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The ID of the report | [optional] |
| **attributes** | [**ReportSyntheticAttributes**](ReportSyntheticAttributes.md) |  | [optional] |
| **relationships** | [**ReportSharedRelationships**](ReportSharedRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportSynthetic.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

