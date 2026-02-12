# PersonaAPIClient::ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatchPositionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pep_class** | **String** | The PEP class of the position. | [optional] |
| **source_key** | **String** | The source key of the position. | [optional] |
| **name** | **String** | The name of the position. | [optional] |
| **topics** | **Array&lt;String&gt;** | The applicable categories of the position. | [optional] |
| **start_date** | **String** | The start date of the position. | [optional] |
| **end_date** | **String** | The end date of the position. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportPoliticallyExposedPersonAttributesAllOfIgnoreListInnerMatchPositionsInner.new(
  pep_class: null,
  source_key: null,
  name: null,
  topics: null,
  start_date: null,
  end_date: null
)
```

