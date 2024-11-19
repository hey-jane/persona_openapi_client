# OpenapiClient::CreateAnApiKey201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ApiKeyWithValue**](ApiKeyWithValue.md) |  | [optional] |
| **included** | **Array&lt;Object&gt;** | Excluded from the response by default. Will be an empty array when the &#x60;include&#x60; query parameter in the request was explicitly set to empty. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateAnApiKey201Response.new(
  data: null,
  included: null
)
```
