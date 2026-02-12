# PersonaAPIClient::ReportPoliticallyExposedPersonAttributesAllOfResultInnerPositionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pep_class** | **String** |  | [optional] |
| **source_key** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **topics** | **Array&lt;String&gt;** | The applicable categories of the position. | [optional] |
| **start_date** | **String** | The start date of the position. | [optional] |
| **end_date** | **String** | The end date of the position. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportPoliticallyExposedPersonAttributesAllOfResultInnerPositionsInner.new(
  pep_class: pep-class-1,
  source_key: united-states-head-of-state,
  name: President of the United States,
  topics: null,
  start_date: 2021-01-20,
  end_date: 2025-01-20
)
```

