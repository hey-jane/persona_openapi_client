# PersonaAPIClient::CasesApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_persona_objects**](CasesApi.md#add_persona_objects) | **POST** /cases/{case-id}/add-objects | Add Persona objects to a Case |
| [**add_tag**](CasesApi.md#add_tag) | **POST** /cases/{case-id}/add-tag | Add tag to a Case |
| [**assign_a_case**](CasesApi.md#assign_a_case) | **POST** /cases/{case-id}/assign | Assign a Case |
| [**create_a_case**](CasesApi.md#create_a_case) | **POST** /cases | Create a Case |
| [**list_all_cases**](CasesApi.md#list_all_cases) | **GET** /cases | List all Cases |
| [**redact_a_case**](CasesApi.md#redact_a_case) | **DELETE** /cases/{case-id} | Redact a Case |
| [**remove_tag**](CasesApi.md#remove_tag) | **POST** /cases/{case-id}/remove-tag | Remove tag from a Case |
| [**retrieve_case**](CasesApi.md#retrieve_case) | **GET** /cases/{case-id} | Retrieve a Case |
| [**search_cases**](CasesApi.md#search_cases) | **POST** /cases/search | Search Cases |
| [**set_status_for_a_case**](CasesApi.md#set_status_for_a_case) | **POST** /cases/{case-id}/set-status | Set status on a Case |
| [**set_tags**](CasesApi.md#set_tags) | **POST** /cases/{case-id}/set-tags | Set tags on a Case |
| [**update_a_case**](CasesApi.md#update_a_case) | **PATCH** /cases/{case-id} | Update a Case |


## add_persona_objects

> <RetrieveCase200Response> add_persona_objects(case_id, opts)

Add Persona objects to a Case

Adds Persona objects (such as inquiries, accounts, or reports) to a Case

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  add_persona_objects_request: PersonaAPIClient::AddPersonaObjectsRequest.new # AddPersonaObjectsRequest | 
}

begin
  # Add Persona objects to a Case
  result = api_instance.add_persona_objects(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->add_persona_objects: #{e}"
end
```

#### Using the add_persona_objects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> add_persona_objects_with_http_info(case_id, opts)

```ruby
begin
  # Add Persona objects to a Case
  data, status_code, headers = api_instance.add_persona_objects_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->add_persona_objects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **add_persona_objects_request** | [**AddPersonaObjectsRequest**](AddPersonaObjectsRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_tag

> <RetrieveCase200Response> add_tag(case_id, opts)

Add tag to a Case

Adds a new tag to a Case

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  add_tag_request: PersonaAPIClient::AddTagRequest.new # AddTagRequest | 
}

begin
  # Add tag to a Case
  result = api_instance.add_tag(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->add_tag: #{e}"
end
```

#### Using the add_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> add_tag_with_http_info(case_id, opts)

```ruby
begin
  # Add tag to a Case
  data, status_code, headers = api_instance.add_tag_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->add_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **add_tag_request** | [**AddTagRequest**](AddTagRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## assign_a_case

> <RetrieveCase200Response> assign_a_case(case_id, opts)

Assign a Case

Assigns a Case to a Persona user.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  assign_a_case_request: PersonaAPIClient::AssignACaseRequest.new({meta: PersonaAPIClient::AssignACaseRequestMeta.new({user_email_address: 'user_email_address_example'})}) # AssignACaseRequest | 
}

begin
  # Assign a Case
  result = api_instance.assign_a_case(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->assign_a_case: #{e}"
end
```

#### Using the assign_a_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> assign_a_case_with_http_info(case_id, opts)

```ruby
begin
  # Assign a Case
  data, status_code, headers = api_instance.assign_a_case_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->assign_a_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **assign_a_case_request** | [**AssignACaseRequest**](AssignACaseRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_a_case

> <CreateACase201Response> create_a_case(opts)

Create a Case

Creates a new case in your organization.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_case_request: PersonaAPIClient::CreateACaseRequest.new({data: PersonaAPIClient::CreateACaseRequestData.new}) # CreateACaseRequest | 
}

begin
  # Create a Case
  result = api_instance.create_a_case(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->create_a_case: #{e}"
end
```

#### Using the create_a_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateACase201Response>, Integer, Hash)> create_a_case_with_http_info(opts)

```ruby
begin
  # Create a Case
  data, status_code, headers = api_instance.create_a_case_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateACase201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->create_a_case_with_http_info: #{e}"
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
| **create_a_case_request** | [**CreateACaseRequest**](CreateACaseRequest.md) |  | [optional] |

### Return type

[**CreateACase201Response**](CreateACase201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_all_cases

> <ListAllCases200Response> list_all_cases(opts)

List all Cases

Returns a list of your organization's cases.  Note that this endpoint aggregates cases across all case template(s). See [Pagination](https://docs.withpersona.com/pagination)for more details about handling the response. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  filter: PersonaAPIClient::ListAllCasesFilterParameter.new # ListAllCasesFilterParameter | 
}

begin
  # List all Cases
  result = api_instance.list_all_cases(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->list_all_cases: #{e}"
end
```

#### Using the list_all_cases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllCases200Response>, Integer, Hash)> list_all_cases_with_http_info(opts)

```ruby
begin
  # List all Cases
  data, status_code, headers = api_instance.list_all_cases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllCases200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->list_all_cases_with_http_info: #{e}"
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
| **filter** | [**ListAllCasesFilterParameter**](.md) |  | [optional] |

### Return type

[**ListAllCases200Response**](ListAllCases200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## redact_a_case

> <RetrieveCase200Response> redact_a_case(case_id, opts)

Redact a Case

Permanently redacts a Case and its fields. Case objects must be redacted individually. **This action cannot be undone**.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Redact a Case
  result = api_instance.redact_a_case(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->redact_a_case: #{e}"
end
```

#### Using the redact_a_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> redact_a_case_with_http_info(case_id, opts)

```ruby
begin
  # Redact a Case
  data, status_code, headers = api_instance.redact_a_case_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->redact_a_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_tag

> <RetrieveCase200Response> remove_tag(case_id, opts)

Remove tag from a Case

Removes an existing tag from a Case

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  remove_tag_request: PersonaAPIClient::RemoveTagRequest.new # RemoveTagRequest | 
}

begin
  # Remove tag from a Case
  result = api_instance.remove_tag(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->remove_tag: #{e}"
end
```

#### Using the remove_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> remove_tag_with_http_info(case_id, opts)

```ruby
begin
  # Remove tag from a Case
  data, status_code, headers = api_instance.remove_tag_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->remove_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **remove_tag_request** | [**RemoveTagRequest**](RemoveTagRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieve_case

> <RetrieveCase200Response> retrieve_case(case_id, opts)

Retrieve a Case

Retrieves the details of an existing Case.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Case
  result = api_instance.retrieve_case(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->retrieve_case: #{e}"
end
```

#### Using the retrieve_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> retrieve_case_with_http_info(case_id, opts)

```ruby
begin
  # Retrieve a Case
  data, status_code, headers = api_instance.retrieve_case_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->retrieve_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_cases

> <SearchCases200Response> search_cases(opts)

Search Cases

Search for cases using a flexible query language.  ## Search vs. List Endpoints  The Search and List endpoints serve different purposes and have distinct performance characteristics.  Use the **Search** endpoint (`POST /cases/search`) when you need to perform complex queries with boolean logic (AND/OR/NOT), filter by custom fields, assignee, case queue, or SLA expiration, or apply multiple conditions simultaneously. Search is optimized for flexible querying and is faster than paginating through all resources when looking for specific records.  Use the **List** endpoint (`GET /cases`) for simple listing with basic filters like status, case template, account, inquiry, or report.  ## Data Freshness  Do not use search for read-after-write flows because the data will not be immediately available to search. Under normal operating conditions, data is searchable within approximately 1 minute of creation or modification. Propagation of new or updated data could be delayed during an outage. For workflows that require immediate data availability after creating or updating a case, use the List Cases endpoint instead.  ### Searchable Attributes  The following attributes can be used in query predicates:  | Attribute | Description | |-----------|-------------| | `template` | Case template (e.g., `ctmpl_ABC123`) | | `status` | Case status (e.g., `open`, `pending`, `resolved`) | | `state` | Case state | | `created_at` | Case creation timestamp | | `updated_at` | Case last updated timestamp | | `resolved_at` | Case resolution timestamp | | `sla_expires_at` | SLA expiration timestamp | | `assignee` | Assigned user (e.g., `user_ABC123`) | | `case_queue` | Case queue (e.g., `cqueue_ABC123`) | | `resolver` | Resolver user | | `fields.*` | Custom case field (e.g., `fields.priority`) |  **Note:** Custom fields (`fields.*`) must be configured as searchable on the Case Template to be queryable. 

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  page: PersonaAPIClient::SearchAccountsPageParameter.new, # SearchAccountsPageParameter | 
  search_cases_request: PersonaAPIClient::SearchCasesRequest.new # SearchCasesRequest | 
}

begin
  # Search Cases
  result = api_instance.search_cases(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->search_cases: #{e}"
end
```

#### Using the search_cases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchCases200Response>, Integer, Hash)> search_cases_with_http_info(opts)

```ruby
begin
  # Search Cases
  data, status_code, headers = api_instance.search_cases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchCases200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->search_cases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **page** | [**SearchAccountsPageParameter**](.md) |  | [optional] |
| **search_cases_request** | [**SearchCasesRequest**](SearchCasesRequest.md) |  | [optional] |

### Return type

[**SearchCases200Response**](SearchCases200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_status_for_a_case

> <RetrieveCase200Response> set_status_for_a_case(case_id, opts)

Set status on a Case

Sets the status of a Case.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update status
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  set_status_for_a_case_request: PersonaAPIClient::SetStatusForACaseRequest.new # SetStatusForACaseRequest | 
}

begin
  # Set status on a Case
  result = api_instance.set_status_for_a_case(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->set_status_for_a_case: #{e}"
end
```

#### Using the set_status_for_a_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> set_status_for_a_case_with_http_info(case_id, opts)

```ruby
begin
  # Set status on a Case
  data, status_code, headers = api_instance.set_status_for_a_case_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->set_status_for_a_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update status |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **set_status_for_a_case_request** | [**SetStatusForACaseRequest**](SetStatusForACaseRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_tags

> <RetrieveCase200Response> set_tags(case_id, opts)

Set tags on a Case

Sets all tags on a Case. Any tags that are not provided in the request will be removed.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  set_tags_request: PersonaAPIClient::SetTagsRequest.new # SetTagsRequest | 
}

begin
  # Set tags on a Case
  result = api_instance.set_tags(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->set_tags: #{e}"
end
```

#### Using the set_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> set_tags_with_http_info(case_id, opts)

```ruby
begin
  # Set tags on a Case
  data, status_code, headers = api_instance.set_tags_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->set_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **set_tags_request** | [**SetTagsRequest**](SetTagsRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_case

> <RetrieveCase200Response> update_a_case(case_id, opts)

Update a Case

Updates the fields and add attachments on a Case that has been previously created.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::CasesApi.new
case_id = 'case_id_example' # String | ID of the case to update
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  update_a_case_request: PersonaAPIClient::UpdateACaseRequest.new # UpdateACaseRequest | 
}

begin
  # Update a Case
  result = api_instance.update_a_case(case_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->update_a_case: #{e}"
end
```

#### Using the update_a_case_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveCase200Response>, Integer, Hash)> update_a_case_with_http_info(case_id, opts)

```ruby
begin
  # Update a Case
  data, status_code, headers = api_instance.update_a_case_with_http_info(case_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveCase200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling CasesApi->update_a_case_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **case_id** | **String** | ID of the case to update |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **update_a_case_request** | [**UpdateACaseRequest**](UpdateACaseRequest.md) |  | [optional] |

### Return type

[**RetrieveCase200Response**](RetrieveCase200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

