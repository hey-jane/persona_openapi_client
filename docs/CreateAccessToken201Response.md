# PersonaAPIClient::CreateAccessToken201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access Token that can be used wherever an API Key would be used. |  |
| **expires_in** | **Integer** | Number of seconds until the access token expires. | [default to 0] |
| **scope** | **String** | Space-separated list of &#39;permission:object&#39; combinations (i.e. &#x60;inquiry.read:inq_uX7kRTiBxsJ1sZqPLAsjdP9j verification.read:ver_ynYuWdrjwwjiHJ2rgHfSoHeT&#x60; |  |
| **token_type** | **String** |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAccessToken201Response.new(
  access_token: null,
  expires_in: null,
  scope: null,
  token_type: null
)
```

