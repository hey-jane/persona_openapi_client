# PersonaAPIClient::ReportHistoryResume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for this history entry | [optional] |
| **type** | **String** | The type of history entry |  |
| **created_at** | **Time** | When the report was resumed |  |
| **creator_name** | **String** | The name of the user that resumed the report |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportHistoryResume.new(
  id: rpr_xSwbLw3ikLrcy7bwzhc5zA3ZRkpr,
  type: resume,
  created_at: 2025-10-22T05:09:22.065+00:00,
  creator_name: John Doe
)
```

