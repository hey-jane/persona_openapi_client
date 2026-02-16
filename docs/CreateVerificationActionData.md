# PersonaAPIClient::CreateVerificationActionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_template_id** | **String** | The token of the Verification Template. See [supported Verification types](https://docs.withpersona.com/integration-testing#supported-verification-types). |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateVerificationActionData.new(
  verification_template_id: null
)
```

