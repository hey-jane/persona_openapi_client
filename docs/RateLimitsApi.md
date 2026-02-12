# PersonaAPIClient::RateLimitsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_all_rate_limits**](RateLimitsApi.md#list_all_rate_limits) | **GET** /rate-limits | List all Rate Limits |


## list_all_rate_limits

> <ListAllRateLimits200Response> list_all_rate_limits(opts)

List all Rate Limits

Returns a list of your current rate limits.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::RateLimitsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # List all Rate Limits
  result = api_instance.list_all_rate_limits(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling RateLimitsApi->list_all_rate_limits: #{e}"
end
```

#### Using the list_all_rate_limits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllRateLimits200Response>, Integer, Hash)> list_all_rate_limits_with_http_info(opts)

```ruby
begin
  # List all Rate Limits
  data, status_code, headers = api_instance.list_all_rate_limits_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllRateLimits200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling RateLimitsApi->list_all_rate_limits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |

### Return type

[**ListAllRateLimits200Response**](ListAllRateLimits200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

