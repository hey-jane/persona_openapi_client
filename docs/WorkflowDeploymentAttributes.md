# PersonaAPIClient::WorkflowDeploymentAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the Workflow Deployment  Possible values: - active - inactive  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **configuration** | [**WorkflowDeploymentAttributesConfiguration**](WorkflowDeploymentAttributesConfiguration.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WorkflowDeploymentAttributes.new(
  status: null,
  configuration: null,
  created_at: null,
  updated_at: null
)
```

