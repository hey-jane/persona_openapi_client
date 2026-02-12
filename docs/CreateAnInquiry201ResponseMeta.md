# PersonaAPIClient::CreateAnInquiry201ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_token** | **String** | The token for the Inquiry Session. Only present when &#x60;meta.auto-create-inquiry-session&#x60; is true. |  |
| **one_time_link** | **String** | The URL for the One-Time Link. Only present when &#x60;meta.auto-create-one-time-link&#x60; is true. |  |
| **one_time_link_short** | **String** | The short URL for the One-Time Link. Only present when &#x60;meta.auto-create-one-time-link&#x60; is true. |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CreateAnInquiry201ResponseMeta.new(
  session_token: null,
  one_time_link: null,
  one_time_link_short: null
)
```

