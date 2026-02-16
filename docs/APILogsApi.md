# PersonaAPIClient::APILogsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_all_api_logs**](APILogsApi.md#list_all_api_logs) | **GET** /api-logs | List all API Logs |
| [**retrieve_an_api_log**](APILogsApi.md#retrieve_an_api_log) | **GET** /api-logs/{api-log-id} | Retrieve an API Log |


## list_all_api_logs

> <ListAllApiLogs200Response> list_all_api_logs(opts)

List all API Logs

Returns a list of your organization's API Logs. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::APILogsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # List all API Logs
  result = api_instance.list_all_api_logs(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling APILogsApi->list_all_api_logs: #{e}"
end
```

#### Using the list_all_api_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllApiLogs200Response>, Integer, Hash)> list_all_api_logs_with_http_info(opts)

```ruby
begin
  # List all API Logs
  data, status_code, headers = api_instance.list_all_api_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllApiLogs200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling APILogsApi->list_all_api_logs_with_http_info: #{e}"
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

[**ListAllApiLogs200Response**](ListAllApiLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_an_api_log

> <RetrieveAnApiLog200Response> retrieve_an_api_log(api_log_id, opts)

Retrieve an API Log

Retrieves the details of an existing API Log.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::APILogsApi.new
api_log_id = 'api_log_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve an API Log
  result = api_instance.retrieve_an_api_log(api_log_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling APILogsApi->retrieve_an_api_log: #{e}"
end
```

#### Using the retrieve_an_api_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnApiLog200Response>, Integer, Hash)> retrieve_an_api_log_with_http_info(api_log_id, opts)

```ruby
begin
  # Retrieve an API Log
  data, status_code, headers = api_instance.retrieve_an_api_log_with_http_info(api_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnApiLog200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling APILogsApi->retrieve_an_api_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_log_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnApiLog200Response**](RetrieveAnApiLog200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

