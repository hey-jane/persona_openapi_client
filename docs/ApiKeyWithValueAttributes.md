# PersonaAPIClient::ApiKeyWithValueAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **note** | **String** |  | [optional] |
| **api_version** | [**ApiVersion**](ApiVersion.md) |  | [optional] |
| **api_key_inflection** | **String** |  | [optional] |
| **api_attributes_blocklist** | **Array&lt;String&gt;** |  | [optional] |
| **permissions** | **Array&lt;String&gt;** |  | [optional] |
| **ip_address_allowlist** | **Array&lt;String&gt;** |  | [optional] |
| **file_access_token_expires_in** | **Integer** |  | [optional] |
| **last_used_at** | **String** |  | [optional] |
| **expires_at** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **value** | **String** | The API Key value. This should be treated with the utmost security. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ApiKeyWithValueAttributes.new(
  name: null,
  note: null,
  api_version: null,
  api_key_inflection: null,
  api_attributes_blocklist: null,
  permissions: null,
  ip_address_allowlist: null,
  file_access_token_expires_in: null,
  last_used_at: null,
  expires_at: null,
  created_at: null,
  value: null
)
```

