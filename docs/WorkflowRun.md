# PersonaAPIClient::WorkflowRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **attributes** | [**WorkflowRunAttributes**](WorkflowRunAttributes.md) |  | [optional] |
| **relationships** | [**WorkflowRunRelationships**](WorkflowRunRelationships.md) |  | [optional] |
| **meta** | [**WorkflowRunMeta**](WorkflowRunMeta.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WorkflowRun.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  meta: null
)
```

