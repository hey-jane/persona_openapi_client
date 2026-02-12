# PersonaAPIClient::ReportHistoryReview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for this history entry | [optional] |
| **type** | **String** | The type of history entry |  |
| **created_at** | **Time** | When the review was created |  |
| **creator_name** | **String** | The name of the user that reviewed the report |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportHistoryReview.new(
  id: rpr_xSwbLw3ikLrcy7bwzhc5zA3ZRkpr,
  type: review,
  created_at: 2025-10-22T04:30:03.000+00:00,
  creator_name: John Doe
)
```

