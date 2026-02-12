# PersonaAPIClient::UserAuditLogsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_all_user_audit_logs**](UserAuditLogsApi.md#list_all_user_audit_logs) | **GET** /user-audit-logs | List all User Audit Logs |
| [**retrieve_a_user_audit_log**](UserAuditLogsApi.md#retrieve_a_user_audit_log) | **GET** /user-audit-logs/{user-audit-log-id} | Retrieve a User Audit Log |


## list_all_user_audit_logs

> <ListAllUserAuditLogs200Response> list_all_user_audit_logs(opts)

List all User Audit Logs

Returns a list of your organization’s user audit logs for up to the most recent 6 months.  Note: You must use a production API key to access this endpoint. For security reasons, we do not expose organization-level resources like user audit logs in Sandbox via API. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::UserAuditLogsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # List all User Audit Logs
  result = api_instance.list_all_user_audit_logs(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling UserAuditLogsApi->list_all_user_audit_logs: #{e}"
end
```

#### Using the list_all_user_audit_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllUserAuditLogs200Response>, Integer, Hash)> list_all_user_audit_logs_with_http_info(opts)

```ruby
begin
  # List all User Audit Logs
  data, status_code, headers = api_instance.list_all_user_audit_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllUserAuditLogs200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling UserAuditLogsApi->list_all_user_audit_logs_with_http_info: #{e}"
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

[**ListAllUserAuditLogs200Response**](ListAllUserAuditLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_a_user_audit_log

> <RetrieveAUserAuditLog200Response> retrieve_a_user_audit_log(user_audit_log_id, opts)

Retrieve a User Audit Log

Retrieves the details of an existing user audit logs for up to the most recent 6 months.  Note: You must use a production API key to access this endpoint. For security reasons, we do not expose organization-level resources like user audit logs in Sandbox via API.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::UserAuditLogsApi.new
user_audit_log_id = 'user_audit_log_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a User Audit Log
  result = api_instance.retrieve_a_user_audit_log(user_audit_log_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling UserAuditLogsApi->retrieve_a_user_audit_log: #{e}"
end
```

#### Using the retrieve_a_user_audit_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAUserAuditLog200Response>, Integer, Hash)> retrieve_a_user_audit_log_with_http_info(user_audit_log_id, opts)

```ruby
begin
  # Retrieve a User Audit Log
  data, status_code, headers = api_instance.retrieve_a_user_audit_log_with_http_info(user_audit_log_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAUserAuditLog200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling UserAuditLogsApi->retrieve_a_user_audit_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_audit_log_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAUserAuditLog200Response**](RetrieveAUserAuditLog200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

