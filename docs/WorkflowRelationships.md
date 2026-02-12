# PersonaAPIClient::WorkflowRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latest_published_version** | [**WorkflowRelationshipsLatestPublishedVersion**](WorkflowRelationshipsLatestPublishedVersion.md) |  | [optional] |
| **active_deployment** | [**WorkflowRelationshipsActiveDeployment**](WorkflowRelationshipsActiveDeployment.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::WorkflowRelationships.new(
  latest_published_version: null,
  active_deployment: null
)
```

