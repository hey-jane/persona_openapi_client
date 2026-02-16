# PersonaAPIClient::CreateAnAccountRequestMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upsert_by** | **String** | The field name to use for upserting the account. This field must be unique across all accounts for the given account type. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAnAccountRequestMeta.new(
  upsert_by: null
)
```

