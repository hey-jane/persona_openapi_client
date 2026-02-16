# PersonaAPIClient::OAuthApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_access_token**](OAuthApi.md#create_access_token) | **POST** /oauth/token | Create Access Token |
| [**create_authorization**](OAuthApi.md#create_authorization) | **POST** /oauth/authorize | Create Authorization |


## create_access_token

> <CreateAccessToken201Response> create_access_token(code, grant_type, opts)

Create Access Token

Creates an access token using an authorization code.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::OAuthApi.new
code = 'code_example' # String | Authorization Code
grant_type = 'grant_type_example' # String | Must be set to 'authorization_code'
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # Create Access Token
  result = api_instance.create_access_token(code, grant_type, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling OAuthApi->create_access_token: #{e}"
end
```

#### Using the create_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAccessToken201Response>, Integer, Hash)> create_access_token_with_http_info(code, grant_type, opts)

```ruby
begin
  # Create Access Token
  data, status_code, headers = api_instance.create_access_token_with_http_info(code, grant_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAccessToken201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling OAuthApi->create_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Authorization Code |  |
| **grant_type** | **String** | Must be set to &#39;authorization_code&#39; | [default to &#39;authorization_code&#39;] |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |

### Return type

[**CreateAccessToken201Response**](CreateAccessToken201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## create_authorization

> <CreateAuthorization201Response> create_authorization(client_id, response_type, scope, opts)

Create Authorization

Authorizes another Organization to access your Inquiry, Verifications, or other Persona resources.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::OAuthApi.new
client_id = 'client_id_example' # String | Organization (`org_`) to authorize
response_type = 'response_type_example' # String | Must be set to 'code'
scope = 'scope_example' # String | Space-separated list of 'permission:object' combinations (i.e. `inquiry.read:inq_uX7kRTiBxsJ1sZqPLAsjdP9j verification.read:ver_ynYuWdrjwwjiHJ2rgHfSoHeT`
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # Create Authorization
  result = api_instance.create_authorization(client_id, response_type, scope, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling OAuthApi->create_authorization: #{e}"
end
```

#### Using the create_authorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAuthorization201Response>, Integer, Hash)> create_authorization_with_http_info(client_id, response_type, scope, opts)

```ruby
begin
  # Create Authorization
  data, status_code, headers = api_instance.create_authorization_with_http_info(client_id, response_type, scope, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAuthorization201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling OAuthApi->create_authorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Organization (&#x60;org_&#x60;) to authorize |  |
| **response_type** | **String** | Must be set to &#39;code&#39; | [default to &#39;code&#39;] |
| **scope** | **String** | Space-separated list of &#39;permission:object&#39; combinations (i.e. &#x60;inquiry.read:inq_uX7kRTiBxsJ1sZqPLAsjdP9j verification.read:ver_ynYuWdrjwwjiHJ2rgHfSoHeT&#x60; |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |

### Return type

[**CreateAuthorization201Response**](CreateAuthorization201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

