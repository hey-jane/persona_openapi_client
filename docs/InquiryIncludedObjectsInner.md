# PersonaAPIClient::InquiryIncludedObjectsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Possible values: - selfie/profile-and-center - selfie/center-only - selfie/configurable-poses  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. |  |
| **id** | **String** |  |  |
| **attributes** | [**WorkflowRunAttributes**](WorkflowRunAttributes.md) |  |  |
| **relationships** | [**WorkflowRunRelationships**](WorkflowRunRelationships.md) |  | [optional] |
| **meta** | [**WorkflowRunMeta**](WorkflowRunMeta.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::InquiryIncludedObjectsInner.new(
  type: null,
  id: null,
  attributes: null,
  relationships: null,
  meta: null
)
```

