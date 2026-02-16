# PersonaAPIClient::ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of registry record | [optional] |
| **issue_date** | **Date** | Date the registration was issued | [optional] |
| **issuing_authority** | **String** | Authority that issued the registration | [optional] |
| **file_number** | **String** | Official registration number | [optional] |
| **registered_name** | **String** | Official registered business name | [optional] |
| **registration_type** | **String** | Type of registration (e.g. domestic, foreign) | [optional] |
| **status** | [**ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInnerStatus**](ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInnerStatus.md) |  | [optional] |
| **registration_state** | **String** | State/subdivision where business is registered | [optional] |
| **addresses** | [**Array&lt;ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInnerAddressesInner&gt;**](ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInnerAddressesInner.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessRegistrationsLookupAttributesAllOfResultRegistryRecordsInner.new(
  type: us_secretary_of_state,
  issue_date: null,
  issuing_authority: null,
  file_number: null,
  registered_name: null,
  registration_type: null,
  status: null,
  registration_state: null,
  addresses: null
)
```

