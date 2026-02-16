# PersonaAPIClient::ReportBusinessAssociatedPersons

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** | A unique identifier for the report. |  |
| **attributes** | [**ReportBusinessAssociatedPersonsAttributes**](ReportBusinessAssociatedPersonsAttributes.md) |  |  |
| **relationships** | [**ReportSharedRelationships**](ReportSharedRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessAssociatedPersons.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null
)
```

