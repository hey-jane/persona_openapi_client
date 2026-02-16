# PersonaAPIClient::UpdateACaseRequestMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sla_expires_in_seconds** | **Float** | Number of seconds from now when SLA expires (max of 90 days). Set to null to clear SLA. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateACaseRequestMeta.new(
  sla_expires_in_seconds: null
)
```

