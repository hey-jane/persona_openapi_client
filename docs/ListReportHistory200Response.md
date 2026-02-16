# PersonaAPIClient::ListReportHistory200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ReportHistoryInner&gt;**](ReportHistoryInner.md) | The history of runs and actions for a report |  |
| **links** | [**ListReportHistory200ResponseLinks**](ListReportHistory200ResponseLinks.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListReportHistory200Response.new(
  data: null,
  links: null
)
```

