# PersonaAPIClient::CreateAuthorization201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Authorization Code that is only usable by the Organization specified by the client-id |  |
| **expires_in** | **Integer** | Number of seconds until the authorization code expires. | [default to 0] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAuthorization201Response.new(
  code: null,
  expires_in: null
)
```

