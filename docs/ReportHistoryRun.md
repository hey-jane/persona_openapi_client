# PersonaAPIClient::ReportHistoryRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for this history entry | [optional] |
| **type** | **String** | The type of history entry |  |
| **run_type** | **String** | The type of run  Possible values: - manual - scheduled  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. |  |
| **scheduled_date** | **Date** | The date the report is scheduled to run on | [optional] |
| **completed_at** | **Time** | When the run was completed | [optional] |
| **matches** | **Integer** | The number of matches found (only present if the run is completed) | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportHistoryRun.new(
  id: rpr_xSwbLw3ikLrcy7bwzhc5zA3ZRkpr,
  type: run,
  run_type: scheduled,
  scheduled_date: 2025-10-22,
  completed_at: 2025-10-22T05:07:10.000+00:00,
  matches: 30
)
```

