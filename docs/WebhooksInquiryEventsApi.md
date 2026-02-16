# PersonaAPIClient::WebhooksInquiryEventsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_inquiry_approved**](WebhooksInquiryEventsApi.md#webhook_inquiry_approved) | **POST** /inquiry.approved | Inquiry approved |
| [**webhook_inquiry_completed**](WebhooksInquiryEventsApi.md#webhook_inquiry_completed) | **POST** /inquiry.completed | Inquiry completed |
| [**webhook_inquiry_created**](WebhooksInquiryEventsApi.md#webhook_inquiry_created) | **POST** /inquiry.created | Inquiry created |
| [**webhook_inquiry_declined**](WebhooksInquiryEventsApi.md#webhook_inquiry_declined) | **POST** /inquiry.declined | Inquiry declined |
| [**webhook_inquiry_expired**](WebhooksInquiryEventsApi.md#webhook_inquiry_expired) | **POST** /inquiry.expired | Inquiry expired |
| [**webhook_inquiry_failed**](WebhooksInquiryEventsApi.md#webhook_inquiry_failed) | **POST** /inquiry.failed | Inquiry failed |
| [**webhook_inquiry_marked_for_review**](WebhooksInquiryEventsApi.md#webhook_inquiry_marked_for_review) | **POST** /inquiry.marked-for-review | Inquiry marked for review |
| [**webhook_inquiry_transitioned**](WebhooksInquiryEventsApi.md#webhook_inquiry_transitioned) | **POST** /inquiry.transitioned | Inquiry transitioned |


## webhook_inquiry_approved

> webhook_inquiry_approved(opts)

Inquiry approved

Webhook for the `inquiry.approved` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry approved
  api_instance.webhook_inquiry_approved(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_approved: #{e}"
end
```

#### Using the webhook_inquiry_approved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_approved_with_http_info(opts)

```ruby
begin
  # Inquiry approved
  data, status_code, headers = api_instance.webhook_inquiry_approved_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_approved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_completed

> webhook_inquiry_completed(opts)

Inquiry completed

Webhook for the `inquiry.completed` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry completed
  api_instance.webhook_inquiry_completed(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_completed: #{e}"
end
```

#### Using the webhook_inquiry_completed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_completed_with_http_info(opts)

```ruby
begin
  # Inquiry completed
  data, status_code, headers = api_instance.webhook_inquiry_completed_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_completed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_created

> webhook_inquiry_created(opts)

Inquiry created

Webhook for the `inquiry.created` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_created_request:  # WebhookInquiryCreatedRequest | 
}

begin
  # Inquiry created
  api_instance.webhook_inquiry_created(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_created: #{e}"
end
```

#### Using the webhook_inquiry_created_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_created_with_http_info(opts)

```ruby
begin
  # Inquiry created
  data, status_code, headers = api_instance.webhook_inquiry_created_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_created_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_created_request** | [**WebhookInquiryCreatedRequest**](WebhookInquiryCreatedRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_declined

> webhook_inquiry_declined(opts)

Inquiry declined

Webhook for the `inquiry.declined` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry declined
  api_instance.webhook_inquiry_declined(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_declined: #{e}"
end
```

#### Using the webhook_inquiry_declined_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_declined_with_http_info(opts)

```ruby
begin
  # Inquiry declined
  data, status_code, headers = api_instance.webhook_inquiry_declined_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_declined_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_expired

> webhook_inquiry_expired(opts)

Inquiry expired

Webhook for the `inquiry.expired` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry expired
  api_instance.webhook_inquiry_expired(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_expired: #{e}"
end
```

#### Using the webhook_inquiry_expired_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_expired_with_http_info(opts)

```ruby
begin
  # Inquiry expired
  data, status_code, headers = api_instance.webhook_inquiry_expired_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_expired_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_failed

> webhook_inquiry_failed(opts)

Inquiry failed

Webhook for the `inquiry.failed` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry failed
  api_instance.webhook_inquiry_failed(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_failed: #{e}"
end
```

#### Using the webhook_inquiry_failed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_failed_with_http_info(opts)

```ruby
begin
  # Inquiry failed
  data, status_code, headers = api_instance.webhook_inquiry_failed_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_failed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_marked_for_review

> webhook_inquiry_marked_for_review(opts)

Inquiry marked for review

Webhook for the `inquiry.marked-for-review` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry marked for review
  api_instance.webhook_inquiry_marked_for_review(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_marked_for_review: #{e}"
end
```

#### Using the webhook_inquiry_marked_for_review_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_marked_for_review_with_http_info(opts)

```ruby
begin
  # Inquiry marked for review
  data, status_code, headers = api_instance.webhook_inquiry_marked_for_review_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_marked_for_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inquiry_transitioned

> webhook_inquiry_transitioned(opts)

Inquiry transitioned

Webhook for the `inquiry.transitioned` event. For more info see [Webhooks Overview](https://docs.withpersona.com/webhooks).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksInquiryEventsApi.new
opts = {
  persona_signature: , # String | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices).
  persona_webhook_attempts_made: , # Integer | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful.
  persona_webhook_attempts_left: , # Integer | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook.
  persona_webhook_first_attempted_at: , # Integer | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds.
  webhook_inquiry_expired_request:  # WebhookInquiryExpiredRequest | 
}

begin
  # Inquiry transitioned
  api_instance.webhook_inquiry_transitioned(opts)
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_transitioned: #{e}"
end
```

#### Using the webhook_inquiry_transitioned_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inquiry_transitioned_with_http_info(opts)

```ruby
begin
  # Inquiry transitioned
  data, status_code, headers = api_instance.webhook_inquiry_transitioned_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksInquiryEventsApi->webhook_inquiry_transitioned_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **persona_signature** | **String** | Header. An HMAC that you should use to check that requests are authentic. Compare this value with your own digest, computed from the request body and your webhook secret. For more info see [Webhook Best Practices](https://docs.withpersona.com/webhooks-best-practices). | [optional] |
| **persona_webhook_attempts_made** | **Integer** | The number of times that Persona has attempted to deliver this webhook. This value is incremented each time Persona attempts to deliver the webhook, regardless of whether the delivery was successful. | [optional] |
| **persona_webhook_attempts_left** | **Integer** | The number of times that Persona will attempt to deliver this webhook. This value is decremented each time Persona attempts to deliver the webhook. | [optional] |
| **persona_webhook_first_attempted_at** | **Integer** | The time at which Persona first attempted to deliver this webhook. This value is a Unix timestamp in seconds. | [optional] |
| **webhook_inquiry_expired_request** | [**WebhookInquiryExpiredRequest**](WebhookInquiryExpiredRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

