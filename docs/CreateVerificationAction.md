# PersonaAPIClient::CreateVerificationAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of simulate action. See [valid actions](https://docs.withpersona.com/integration-testing#creating-verification-with-status). |  |
| **data** | [**CreateVerificationActionData**](CreateVerificationActionData.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateVerificationAction.new(
  type: null,
  data: null
)
```

