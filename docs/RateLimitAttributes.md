# PersonaAPIClient::RateLimitAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum number of requests allowed in the current time window | [optional] |
| **remaining** | **Integer** | The number of requests remaining in the current time window | [optional] |
| **seconds_to_reset** | **Integer** | The number of seconds until the rate limit resets | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::RateLimitAttributes.new(
  limit: 300,
  remaining: 250,
  seconds_to_reset: 60
)
```

