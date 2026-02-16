# PersonaAPIClient::CreateAWorkflowRun200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**WorkflowRun**](WorkflowRun.md) |  |  |
| **included** | [**Array&lt;WorkflowRunIncludedObjectsInner&gt;**](WorkflowRunIncludedObjectsInner.md) | Objects that _may_ be returned if specified via the &#x60;include&#x60; query parameter in the request. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAWorkflowRun200Response.new(
  data: null,
  included: null
)
```

