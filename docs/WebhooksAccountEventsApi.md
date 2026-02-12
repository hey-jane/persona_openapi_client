# PersonaAPIClient::WebhooksAccountEventsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_account_archived**](WebhooksAccountEventsApi.md#webhook_account_archived) | **POST** /account.archived | Account archived |
| [**webhook_account_consolidated**](WebhooksAccountEventsApi.md#webhook_account_consolidated) | **POST** /account.consolidated | Account consolidated |
| [**webhook_account_created**](WebhooksAccountEventsApi.md#webhook_account_created) | **POST** /account.created | Account created |
| [**webhook_account_redacted**](WebhooksAccountEventsApi.md#webhook_account_redacted) | **POST** /account.redacted | Account redacted |
| [**webhook_account_restored**](WebhooksAccountEventsApi.md#webhook_account_restored) | **POST** /account.restored | Account restored |
| [**webhook_account_tag_added**](WebhooksAccountEventsApi.md#webhook_account_tag_added) | **POST** /account.tag-added | Account tag added |
| [**webhook_account_tag_removed**](WebhooksAccountEventsApi.md#webhook_account_tag_removed) | **POST** /account.tag-removed | Account tag removed |


## webhook_account_archived

> webhook_account_archived(opts)

Account archived

Webhook for the `account.archived` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_redacted_request:  # WebhookAccountRedactedRequest | 
}

begin
  # Account archived
  api_instance.webhook_account_archived(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_archived: #{e}"
end
```

#### Using the webhook_account_archived_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_archived_with_http_info(opts)

```ruby
begin
  # Account archived
  data, status_code, headers = api_instance.webhook_account_archived_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_archived_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_redacted_request** | [**WebhookAccountRedactedRequest**](WebhookAccountRedactedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_account_consolidated

> webhook_account_consolidated(opts)

Account consolidated

Webhook for the `account.consolidated` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_redacted_request:  # WebhookAccountRedactedRequest | 
}

begin
  # Account consolidated
  api_instance.webhook_account_consolidated(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_consolidated: #{e}"
end
```

#### Using the webhook_account_consolidated_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_consolidated_with_http_info(opts)

```ruby
begin
  # Account consolidated
  data, status_code, headers = api_instance.webhook_account_consolidated_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_consolidated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_redacted_request** | [**WebhookAccountRedactedRequest**](WebhookAccountRedactedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_account_created

> webhook_account_created(opts)

Account created

Webhook for the `account.created` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_created_request:  # WebhookAccountCreatedRequest | 
}

begin
  # Account created
  api_instance.webhook_account_created(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_created: #{e}"
end
```

#### Using the webhook_account_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_created_with_http_info(opts)

```ruby
begin
  # Account created
  data, status_code, headers = api_instance.webhook_account_created_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_created_request** | [**WebhookAccountCreatedRequest**](WebhookAccountCreatedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_account_redacted

> webhook_account_redacted(opts)

Account redacted

Webhook for the `account.redacted` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_redacted_request:  # WebhookAccountRedactedRequest | 
}

begin
  # Account redacted
  api_instance.webhook_account_redacted(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_redacted: #{e}"
end
```

#### Using the webhook_account_redacted_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_redacted_with_http_info(opts)

```ruby
begin
  # Account redacted
  data, status_code, headers = api_instance.webhook_account_redacted_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_redacted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_redacted_request** | [**WebhookAccountRedactedRequest**](WebhookAccountRedactedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_account_restored

> webhook_account_restored(opts)

Account restored

Webhook for the `account.restored` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_redacted_request:  # WebhookAccountRedactedRequest | 
}

begin
  # Account restored
  api_instance.webhook_account_restored(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_restored: #{e}"
end
```

#### Using the webhook_account_restored_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_restored_with_http_info(opts)

```ruby
begin
  # Account restored
  data, status_code, headers = api_instance.webhook_account_restored_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_restored_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_redacted_request** | [**WebhookAccountRedactedRequest**](WebhookAccountRedactedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_account_tag_added

> webhook_account_tag_added(opts)

Account tag added

Webhook for the `account.tag-added` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_redacted_request:  # WebhookAccountRedactedRequest | 
}

begin
  # Account tag added
  api_instance.webhook_account_tag_added(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_tag_added: #{e}"
end
```

#### Using the webhook_account_tag_added_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_tag_added_with_http_info(opts)

```ruby
begin
  # Account tag added
  data, status_code, headers = api_instance.webhook_account_tag_added_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_tag_added_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_redacted_request** | [**WebhookAccountRedactedRequest**](WebhookAccountRedactedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_account_tag_removed

> webhook_account_tag_removed(opts)

Account tag removed

Webhook for the `account.tag-removed` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksAccountEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_account_redacted_request:  # WebhookAccountRedactedRequest | 
}

begin
  # Account tag removed
  api_instance.webhook_account_tag_removed(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_tag_removed: #{e}"
end
```

#### Using the webhook_account_tag_removed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_account_tag_removed_with_http_info(opts)

```ruby
begin
  # Account tag removed
  data, status_code, headers = api_instance.webhook_account_tag_removed_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksAccountEventsApi->webhook_account_tag_removed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_account_redacted_request** | [**WebhookAccountRedactedRequest**](WebhookAccountRedactedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

