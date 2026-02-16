# PersonaAPIClient::WebhooksApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**archive_a_webhook**](WebhooksApi.md#archive_a_webhook) | **POST** /webhooks/{webhook-id}/archive | Archive a Webhook |
| [**clone_a_webhook**](WebhooksApi.md#clone_a_webhook) | **POST** /webhooks/{webhook-id}/clone | Clone a Webhook |
| [**create_a_webhook**](WebhooksApi.md#create_a_webhook) | **POST** /webhooks | Create a Webhook |
| [**disable_a_webhook**](WebhooksApi.md#disable_a_webhook) | **POST** /webhooks/{webhook-id}/disable | Disable a Webhook |
| [**enable_a_webhook**](WebhooksApi.md#enable_a_webhook) | **POST** /webhooks/{webhook-id}/enable | Enable a Webhook |
| [**list_all_webhooks**](WebhooksApi.md#list_all_webhooks) | **GET** /webhooks | List all Webhooks |
| [**retrieve_a_webhook**](WebhooksApi.md#retrieve_a_webhook) | **GET** /webhooks/{webhook-id} | Retrieve a Webhook |
| [**rotate_a_webhook_secret**](WebhooksApi.md#rotate_a_webhook_secret) | **POST** /webhooks/{webhook-id}/rotate-secret | Rotate a Webhook&#39;s secret |
| [**update_a_webhook**](WebhooksApi.md#update_a_webhook) | **PATCH** /webhooks/{webhook-id} | Update a Webhook |


## archive_a_webhook

> <ArchiveAWebhook200Response> archive_a_webhook(webhook_id, opts)

Archive a Webhook

Archives a webhook.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook's ID (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Archive a Webhook
  result = api_instance.archive_a_webhook(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->archive_a_webhook: #{e}"
end
```

#### Using the archive_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArchiveAWebhook200Response>, Integer, Hash)> archive_a_webhook_with_http_info(webhook_id, opts)

```ruby
begin
  # Archive a Webhook
  data, status_code, headers = api_instance.archive_a_webhook_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArchiveAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->archive_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook&#39;s ID (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ArchiveAWebhook200Response**](ArchiveAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clone_a_webhook

> <RetrieveAWebhook200Response> clone_a_webhook(webhook_id, opts)

Clone a Webhook

Creates a copy of an existing webhook. All attributes except the secret are copied over to the new webhook.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | The ID of the Webhook to clone (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Clone a Webhook
  result = api_instance.clone_a_webhook(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->clone_a_webhook: #{e}"
end
```

#### Using the clone_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAWebhook200Response>, Integer, Hash)> clone_a_webhook_with_http_info(webhook_id, opts)

```ruby
begin
  # Clone a Webhook
  data, status_code, headers = api_instance.clone_a_webhook_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->clone_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | The ID of the Webhook to clone (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAWebhook200Response**](RetrieveAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_a_webhook

> <CreateAWebhook201Response> create_a_webhook(opts)

Create a Webhook

Creates a new webhook with response defaults.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_webhook_request: PersonaAPIClient::CreateAWebhookRequest.new({data: PersonaAPIClient::CreateAWebhookRequestData.new({attributes: PersonaAPIClient::WebhookRequestAttributes.new})}) # CreateAWebhookRequest | 
}

begin
  # Create a Webhook
  result = api_instance.create_a_webhook(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->create_a_webhook: #{e}"
end
```

#### Using the create_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAWebhook201Response>, Integer, Hash)> create_a_webhook_with_http_info(opts)

```ruby
begin
  # Create a Webhook
  data, status_code, headers = api_instance.create_a_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAWebhook201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->create_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **create_a_webhook_request** | [**CreateAWebhookRequest**](CreateAWebhookRequest.md) |  | [optional] |

### Return type

[**CreateAWebhook201Response**](CreateAWebhook201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_a_webhook

> <UpdateAWebhook200Response> disable_a_webhook(webhook_id, opts)

Disable a Webhook

Disables a webhook.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook's ID (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Disable a Webhook
  result = api_instance.disable_a_webhook(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->disable_a_webhook: #{e}"
end
```

#### Using the disable_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAWebhook200Response>, Integer, Hash)> disable_a_webhook_with_http_info(webhook_id, opts)

```ruby
begin
  # Disable a Webhook
  data, status_code, headers = api_instance.disable_a_webhook_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->disable_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook&#39;s ID (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**UpdateAWebhook200Response**](UpdateAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## enable_a_webhook

> <ArchiveAWebhook200Response> enable_a_webhook(webhook_id, opts)

Enable a Webhook

Enables a webhook.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook's ID (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Enable a Webhook
  result = api_instance.enable_a_webhook(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->enable_a_webhook: #{e}"
end
```

#### Using the enable_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArchiveAWebhook200Response>, Integer, Hash)> enable_a_webhook_with_http_info(webhook_id, opts)

```ruby
begin
  # Enable a Webhook
  data, status_code, headers = api_instance.enable_a_webhook_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArchiveAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->enable_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook&#39;s ID (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ArchiveAWebhook200Response**](ArchiveAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_webhooks

> <ListAllWebhooks200Response> list_all_webhooks(opts)

List all Webhooks

Returns a list of your environment's webhooks. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # List all Webhooks
  result = api_instance.list_all_webhooks(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->list_all_webhooks: #{e}"
end
```

#### Using the list_all_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllWebhooks200Response>, Integer, Hash)> list_all_webhooks_with_http_info(opts)

```ruby
begin
  # List all Webhooks
  data, status_code, headers = api_instance.list_all_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllWebhooks200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->list_all_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **page** | [**ListAllAccountsPageParameter**](.md) |  | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ListAllWebhooks200Response**](ListAllWebhooks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_a_webhook

> <RetrieveAWebhook200Response> retrieve_a_webhook(webhook_id, opts)

Retrieve a Webhook

Retrieves the details of an existing webhook, including its secret.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook's ID (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Webhook
  result = api_instance.retrieve_a_webhook(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->retrieve_a_webhook: #{e}"
end
```

#### Using the retrieve_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAWebhook200Response>, Integer, Hash)> retrieve_a_webhook_with_http_info(webhook_id, opts)

```ruby
begin
  # Retrieve a Webhook
  data, status_code, headers = api_instance.retrieve_a_webhook_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->retrieve_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook&#39;s ID (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAWebhook200Response**](RetrieveAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_a_webhook_secret

> <RetrieveAWebhook200Response> rotate_a_webhook_secret(webhook_id, opts)

Rotate a Webhook's secret

Rotates a webhook's secret.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook's ID (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  rotate_a_webhook_secret_request: PersonaAPIClient::RotateAWebhookSecretRequest.new # RotateAWebhookSecretRequest | 
}

begin
  # Rotate a Webhook's secret
  result = api_instance.rotate_a_webhook_secret(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->rotate_a_webhook_secret: #{e}"
end
```

#### Using the rotate_a_webhook_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAWebhook200Response>, Integer, Hash)> rotate_a_webhook_secret_with_http_info(webhook_id, opts)

```ruby
begin
  # Rotate a Webhook's secret
  data, status_code, headers = api_instance.rotate_a_webhook_secret_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->rotate_a_webhook_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook&#39;s ID (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **rotate_a_webhook_secret_request** | [**RotateAWebhookSecretRequest**](RotateAWebhookSecretRequest.md) |  | [optional] |

### Return type

[**RetrieveAWebhook200Response**](RetrieveAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_webhook

> <UpdateAWebhook200Response> update_a_webhook(webhook_id, opts)

Update a Webhook

Updates an existing Webhook.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook's ID (starts with \"wbh_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  update_a_webhook_request: PersonaAPIClient::UpdateAWebhookRequest.new # UpdateAWebhookRequest | 
}

begin
  # Update a Webhook
  result = api_instance.update_a_webhook(webhook_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->update_a_webhook: #{e}"
end
```

#### Using the update_a_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAWebhook200Response>, Integer, Hash)> update_a_webhook_with_http_info(webhook_id, opts)

```ruby
begin
  # Update a Webhook
  data, status_code, headers = api_instance.update_a_webhook_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAWebhook200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling WebhooksApi->update_a_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook&#39;s ID (starts with \&quot;wbh_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **update_a_webhook_request** | [**UpdateAWebhookRequest**](UpdateAWebhookRequest.md) |  | [optional] |

### Return type

[**UpdateAWebhook200Response**](UpdateAWebhook200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

