# PersonaAPIClient::ReportsIncludedObjectsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** | Unique identifier for this Transaction. Starts with &#x60;txn_&#x60;. |  |
| **attributes** | [**TransactionAttributes**](TransactionAttributes.md) |  |  |
| **relationships** | [**TransactionRelationships**](TransactionRelationships.md) |  |  |
| **meta** | [**ReportTemplateSharedMeta**](ReportTemplateSharedMeta.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportsIncludedObjectsInner.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  meta: null
)
```

