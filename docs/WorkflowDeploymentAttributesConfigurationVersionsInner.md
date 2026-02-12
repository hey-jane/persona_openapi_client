# PersonaAPIClient::WorkflowDeploymentAttributesConfigurationVersionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The token of the workflow version | [optional] |
| **percentage** | **Integer** | The percentage of traffic this version should receive | [optional] |
| **label** | **String** | The label of the version (treatment or control) | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WorkflowDeploymentAttributesConfigurationVersionsInner.new(
  token: null,
  percentage: null,
  label: null
)
```

