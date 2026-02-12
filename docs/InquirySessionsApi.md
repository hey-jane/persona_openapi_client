# PersonaAPIClient::InquirySessionsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_an_inquiry_session**](InquirySessionsApi.md#create_an_inquiry_session) | **POST** /inquiry-sessions | Create an Inquiry Session |
| [**expire_an_inquiry_session**](InquirySessionsApi.md#expire_an_inquiry_session) | **POST** /inquiry-sessions/{inquiry-session-id}/expire | Expire an Inquiry Session |
| [**expire_inquiry_sessions**](InquirySessionsApi.md#expire_inquiry_sessions) | **POST** /inquiry-sessions/expire-all | Expire Inquiry Sessions |
| [**generate_a_one_time_link_for_an_inquiry_session**](InquirySessionsApi.md#generate_a_one_time_link_for_an_inquiry_session) | **POST** /inquiry-sessions/{inquiry-session-id}/generate-one-time-link | Generate a one-time link for Inquiry Session |
| [**list_all_inquiry_sessions**](InquirySessionsApi.md#list_all_inquiry_sessions) | **GET** /inquiry-sessions | List all Inquiry Sessions |
| [**retrieve_an_inquiry_session**](InquirySessionsApi.md#retrieve_an_inquiry_session) | **GET** /inquiry-sessions/{inquiry-session-id} | Retrieve an Inquiry Session |


## create_an_inquiry_session

> <CreateAnInquirySession201Response> create_an_inquiry_session(opts)

Create an Inquiry Session

Creates a new Inquiry Session. By default, we only allow up to 25 sessions per Inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquirySessionsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_an_inquiry_session_request: PersonaAPIClient::CreateAnInquirySessionRequest.new # CreateAnInquirySessionRequest | 
}

begin
  # Create an Inquiry Session
  result = api_instance.create_an_inquiry_session(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->create_an_inquiry_session: #{e}"
end
```

#### Using the create_an_inquiry_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAnInquirySession201Response>, Integer, Hash)> create_an_inquiry_session_with_http_info(opts)

```ruby
begin
  # Create an Inquiry Session
  data, status_code, headers = api_instance.create_an_inquiry_session_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAnInquirySession201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->create_an_inquiry_session_with_http_info: #{e}"
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
| **create_an_inquiry_session_request** | [**CreateAnInquirySessionRequest**](CreateAnInquirySessionRequest.md) |  | [optional] |

### Return type

[**CreateAnInquirySession201Response**](CreateAnInquirySession201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## expire_an_inquiry_session

> <RetrieveAnInquirySession200Response> expire_an_inquiry_session(inquiry_session_id, opts)

Expire an Inquiry Session

Expires a specific Inquiry Session.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquirySessionsApi.new
inquiry_session_id = 'inquiry_session_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Expire an Inquiry Session
  result = api_instance.expire_an_inquiry_session(inquiry_session_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->expire_an_inquiry_session: #{e}"
end
```

#### Using the expire_an_inquiry_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnInquirySession200Response>, Integer, Hash)> expire_an_inquiry_session_with_http_info(inquiry_session_id, opts)

```ruby
begin
  # Expire an Inquiry Session
  data, status_code, headers = api_instance.expire_an_inquiry_session_with_http_info(inquiry_session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnInquirySession200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->expire_an_inquiry_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_session_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnInquirySession200Response**](RetrieveAnInquirySession200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## expire_inquiry_sessions

> <ExpireInquirySessions200Response> expire_inquiry_sessions(opts)

Expire Inquiry Sessions

Expires all active Inquiry Sessions for a given set of Inquiries.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquirySessionsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  expire_inquiry_sessions_request: PersonaAPIClient::ExpireInquirySessionsRequest.new # ExpireInquirySessionsRequest | 
}

begin
  # Expire Inquiry Sessions
  result = api_instance.expire_inquiry_sessions(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->expire_inquiry_sessions: #{e}"
end
```

#### Using the expire_inquiry_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpireInquirySessions200Response>, Integer, Hash)> expire_inquiry_sessions_with_http_info(opts)

```ruby
begin
  # Expire Inquiry Sessions
  data, status_code, headers = api_instance.expire_inquiry_sessions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpireInquirySessions200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->expire_inquiry_sessions_with_http_info: #{e}"
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
| **expire_inquiry_sessions_request** | [**ExpireInquirySessionsRequest**](ExpireInquirySessionsRequest.md) |  | [optional] |

### Return type

[**ExpireInquirySessions200Response**](ExpireInquirySessions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_a_one_time_link_for_an_inquiry_session

> <GenerateAOneTimeLinkForAnInquirySession200Response> generate_a_one_time_link_for_an_inquiry_session(inquiry_session_id, opts)

Generate a one-time link for Inquiry Session

Generates a one-time link for a specific Inquiry Session.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquirySessionsApi.new
inquiry_session_id = 'inquiry_session_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Generate a one-time link for Inquiry Session
  result = api_instance.generate_a_one_time_link_for_an_inquiry_session(inquiry_session_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->generate_a_one_time_link_for_an_inquiry_session: #{e}"
end
```

#### Using the generate_a_one_time_link_for_an_inquiry_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateAOneTimeLinkForAnInquirySession200Response>, Integer, Hash)> generate_a_one_time_link_for_an_inquiry_session_with_http_info(inquiry_session_id, opts)

```ruby
begin
  # Generate a one-time link for Inquiry Session
  data, status_code, headers = api_instance.generate_a_one_time_link_for_an_inquiry_session_with_http_info(inquiry_session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateAOneTimeLinkForAnInquirySession200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->generate_a_one_time_link_for_an_inquiry_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_session_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**GenerateAOneTimeLinkForAnInquirySession200Response**](GenerateAOneTimeLinkForAnInquirySession200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_inquiry_sessions

> <ListAllInquirySessions200Response> list_all_inquiry_sessions(opts)

List all Inquiry Sessions

Retrieves a list of Inquiry Sessions. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquirySessionsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  filter: PersonaAPIClient::ListAllInquirySessionsFilterParameter.new # ListAllInquirySessionsFilterParameter | 
}

begin
  # List all Inquiry Sessions
  result = api_instance.list_all_inquiry_sessions(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->list_all_inquiry_sessions: #{e}"
end
```

#### Using the list_all_inquiry_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllInquirySessions200Response>, Integer, Hash)> list_all_inquiry_sessions_with_http_info(opts)

```ruby
begin
  # List all Inquiry Sessions
  data, status_code, headers = api_instance.list_all_inquiry_sessions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllInquirySessions200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->list_all_inquiry_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **filter** | [**ListAllInquirySessionsFilterParameter**](.md) |  | [optional] |

### Return type

[**ListAllInquirySessions200Response**](ListAllInquirySessions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_an_inquiry_session

> <RetrieveAnInquirySession200Response> retrieve_an_inquiry_session(inquiry_session_id, opts)

Retrieve an Inquiry Session

Retrieves details of a specific Inquiry Session.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquirySessionsApi.new
inquiry_session_id = 'inquiry_session_id_example' # String | Inquiry Session ID
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve an Inquiry Session
  result = api_instance.retrieve_an_inquiry_session(inquiry_session_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->retrieve_an_inquiry_session: #{e}"
end
```

#### Using the retrieve_an_inquiry_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnInquirySession200Response>, Integer, Hash)> retrieve_an_inquiry_session_with_http_info(inquiry_session_id, opts)

```ruby
begin
  # Retrieve an Inquiry Session
  data, status_code, headers = api_instance.retrieve_an_inquiry_session_with_http_info(inquiry_session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnInquirySession200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquirySessionsApi->retrieve_an_inquiry_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_session_id** | **String** | Inquiry Session ID |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnInquirySession200Response**](RetrieveAnInquirySession200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

