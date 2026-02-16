# PersonaAPIClient::UpdateAnApiKeyRequestDataAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human-readable name of the API key. | [optional] |
| **note** | **String** | Human readable context about the use of the API key. | [optional] |
| **api_version** | [**ApiVersion**](ApiVersion.md) | API version that will be used for requests made with this API key. Defaults to the API version used when making this request. | [optional] |
| **api_key_inflection** | **String** | Default API response key inflection. Default is kebab-case. | [optional] |
| **api_attributes_blocklist** | **Array&lt;String&gt;** | Attributes blocked from API responses. | [optional] |
| **ip_address_allowlist** | **Array&lt;String&gt;** | IP addresses permitted for use by the API key. | [optional] |
| **permissions** | **Array&lt;String&gt;** | Abilities permitted to the API key. | [optional] |
| **file_access_token_expires_in** | **Integer** | How soon any file access tokens returned in API responses expire. For more info see [Downloading Files](https://docs.withpersona.com/downloading-files). | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::UpdateAnApiKeyRequestDataAttributes.new(
  name: null,
  note: null,
  api_version: null,
  api_key_inflection: null,
  api_attributes_blocklist: null,
  ip_address_allowlist: null,
  permissions: null,
  file_access_token_expires_in: null
)
```

