# PersonaAPIClient::ReportBusinessRegistrationsLookupAttributesAllOfResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** | The name of the business | [optional] |
| **legal_entity_type** | **String** | The type of legal entity | [optional] |
| **formation_country** | **String** | The country where the business was formed | [optional] |
| **formation_subdivision** | **String** | The subdivision where the business was formed | [optional] |
| **formation_date** | **Date** | The date the business was formed | [optional] |
| **registry_records** | [**Array&lt;ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInner&gt;**](ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInner.md) | List of business registration records | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessRegistrationsLookupAttributesAllOfResult.new(
  business_name: null,
  legal_entity_type: null,
  formation_country: null,
  formation_subdivision: null,
  formation_date: null,
  registry_records: null
)
```

