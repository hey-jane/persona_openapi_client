# PersonaAPIClient::DocumentsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_document**](DocumentsApi.md#create_a_document) | **POST** /document/generics | Create a Generic Document |
| [**create_a_government_id_document**](DocumentsApi.md#create_a_government_id_document) | **POST** /document/government-ids | Create a Government ID Document |
| [**retrieve_a_document**](DocumentsApi.md#retrieve_a_document) | **GET** /documents/{document-id} | Retrieve a Document |
| [**retrieve_a_generic_document**](DocumentsApi.md#retrieve_a_generic_document) | **GET** /document/generics/{document-id} | Retrieve a Generic Document |
| [**retrieve_a_government_id_document**](DocumentsApi.md#retrieve_a_government_id_document) | **GET** /document/government-ids/{document-id} | Retrieve a Government Id Document |
| [**submit_a_document**](DocumentsApi.md#submit_a_document) | **POST** /document/generics/{document-id}/submit | Submit a Generic Document |
| [**submit_a_government_id_document**](DocumentsApi.md#submit_a_government_id_document) | **POST** /document/government-ids/{document-id}/submit | Submit a Government ID Document |
| [**update_a_document**](DocumentsApi.md#update_a_document) | **PATCH** /document/generics/{document-id} | Update a Generic Document |
| [**update_a_government_id_document**](DocumentsApi.md#update_a_government_id_document) | **PATCH** /document/government-ids/{document-id} | Update a Government ID Document |


## create_a_document

> <CreateADocument201Response> create_a_document(opts)

Create a Generic Document

Creates a new generic document.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_document_request: PersonaAPIClient::CreateADocumentRequest.new({data: PersonaAPIClient::CreateADocumentRequestData.new}) # CreateADocumentRequest | 
}

begin
  # Create a Generic Document
  result = api_instance.create_a_document(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->create_a_document: #{e}"
end
```

#### Using the create_a_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateADocument201Response>, Integer, Hash)> create_a_document_with_http_info(opts)

```ruby
begin
  # Create a Generic Document
  data, status_code, headers = api_instance.create_a_document_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateADocument201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->create_a_document_with_http_info: #{e}"
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
| **create_a_document_request** | [**CreateADocumentRequest**](CreateADocumentRequest.md) |  | [optional] |

### Return type

[**CreateADocument201Response**](CreateADocument201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_a_government_id_document

> <CreateAGovernmentIdDocument201Response> create_a_government_id_document(opts)

Create a Government ID Document

Creates a new government ID document

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_government_id_document_request: PersonaAPIClient::CreateAGovernmentIdDocumentRequest.new({data: PersonaAPIClient::CreateAGovernmentIdDocumentRequestData.new}) # CreateAGovernmentIdDocumentRequest | 
}

begin
  # Create a Government ID Document
  result = api_instance.create_a_government_id_document(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->create_a_government_id_document: #{e}"
end
```

#### Using the create_a_government_id_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAGovernmentIdDocument201Response>, Integer, Hash)> create_a_government_id_document_with_http_info(opts)

```ruby
begin
  # Create a Government ID Document
  data, status_code, headers = api_instance.create_a_government_id_document_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAGovernmentIdDocument201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->create_a_government_id_document_with_http_info: #{e}"
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
| **create_a_government_id_document_request** | [**CreateAGovernmentIdDocumentRequest**](CreateAGovernmentIdDocumentRequest.md) |  | [optional] |

### Return type

[**CreateAGovernmentIdDocument201Response**](CreateAGovernmentIdDocument201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieve_a_document

> <RetrieveADocument200Response> retrieve_a_document(document_id, opts)

Retrieve a Document

Retrieves the details of a Document.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Document
  result = api_instance.retrieve_a_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_a_document: #{e}"
end
```

#### Using the retrieve_a_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveADocument200Response>, Integer, Hash)> retrieve_a_document_with_http_info(document_id, opts)

```ruby
begin
  # Retrieve a Document
  data, status_code, headers = api_instance.retrieve_a_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveADocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_a_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveADocument200Response**](RetrieveADocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_a_generic_document

> <RetrieveAGenericDocument200Response> retrieve_a_generic_document(document_id, opts)

Retrieve a Generic Document

Retrieves the details of a generic document that has been previously created.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Generic Document
  result = api_instance.retrieve_a_generic_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_a_generic_document: #{e}"
end
```

#### Using the retrieve_a_generic_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAGenericDocument200Response>, Integer, Hash)> retrieve_a_generic_document_with_http_info(document_id, opts)

```ruby
begin
  # Retrieve a Generic Document
  data, status_code, headers = api_instance.retrieve_a_generic_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAGenericDocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_a_generic_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAGenericDocument200Response**](RetrieveAGenericDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_a_government_id_document

> <RetrieveAGovernmentIdDocument200Response> retrieve_a_government_id_document(document_id, opts)

Retrieve a Government Id Document

Retrieves the details of a government-id document that has been previously created.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Government Id Document
  result = api_instance.retrieve_a_government_id_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_a_government_id_document: #{e}"
end
```

#### Using the retrieve_a_government_id_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAGovernmentIdDocument200Response>, Integer, Hash)> retrieve_a_government_id_document_with_http_info(document_id, opts)

```ruby
begin
  # Retrieve a Government Id Document
  data, status_code, headers = api_instance.retrieve_a_government_id_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAGovernmentIdDocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->retrieve_a_government_id_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAGovernmentIdDocument200Response**](RetrieveAGovernmentIdDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_a_document

> <RetrieveAGenericDocument200Response> submit_a_document(document_id, opts)

Submit a Generic Document

Submits a generic document for processing. Can only submit `initiated` documents with files attached.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Submit a Generic Document
  result = api_instance.submit_a_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->submit_a_document: #{e}"
end
```

#### Using the submit_a_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAGenericDocument200Response>, Integer, Hash)> submit_a_document_with_http_info(document_id, opts)

```ruby
begin
  # Submit a Generic Document
  data, status_code, headers = api_instance.submit_a_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAGenericDocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->submit_a_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAGenericDocument200Response**](RetrieveAGenericDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_a_government_id_document

> <UpdateAGovernmentIdDocument200Response> submit_a_government_id_document(document_id, opts)

Submit a Government ID Document

Submits a government ID document for processing. Can only submit `initiated` documents with photos of the ID attached.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Submit a Government ID Document
  result = api_instance.submit_a_government_id_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->submit_a_government_id_document: #{e}"
end
```

#### Using the submit_a_government_id_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAGovernmentIdDocument200Response>, Integer, Hash)> submit_a_government_id_document_with_http_info(document_id, opts)

```ruby
begin
  # Submit a Government ID Document
  data, status_code, headers = api_instance.submit_a_government_id_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAGovernmentIdDocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->submit_a_government_id_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**UpdateAGovernmentIdDocument200Response**](UpdateAGovernmentIdDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_a_document

> <RetrieveAGenericDocument200Response> update_a_document(document_id, opts)

Update a Generic Document

Updates an existing generic document. Can only update `initiated` documents.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  update_a_document_request: PersonaAPIClient::UpdateADocumentRequest.new({data: PersonaAPIClient::UpdateADocumentRequestData.new}) # UpdateADocumentRequest | 
}

begin
  # Update a Generic Document
  result = api_instance.update_a_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->update_a_document: #{e}"
end
```

#### Using the update_a_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAGenericDocument200Response>, Integer, Hash)> update_a_document_with_http_info(document_id, opts)

```ruby
begin
  # Update a Generic Document
  data, status_code, headers = api_instance.update_a_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAGenericDocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->update_a_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **update_a_document_request** | [**UpdateADocumentRequest**](UpdateADocumentRequest.md) |  | [optional] |

### Return type

[**RetrieveAGenericDocument200Response**](RetrieveAGenericDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_government_id_document

> <UpdateAGovernmentIdDocument200Response> update_a_government_id_document(document_id, opts)

Update a Government ID Document

Updates an existing government ID document. Can only update `initiated` documents.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::DocumentsApi.new
document_id = 'document_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  update_a_government_id_document_request: PersonaAPIClient::UpdateAGovernmentIdDocumentRequest.new({data: PersonaAPIClient::UpdateAGovernmentIdDocumentRequestData.new}) # UpdateAGovernmentIdDocumentRequest | 
}

begin
  # Update a Government ID Document
  result = api_instance.update_a_government_id_document(document_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->update_a_government_id_document: #{e}"
end
```

#### Using the update_a_government_id_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAGovernmentIdDocument200Response>, Integer, Hash)> update_a_government_id_document_with_http_info(document_id, opts)

```ruby
begin
  # Update a Government ID Document
  data, status_code, headers = api_instance.update_a_government_id_document_with_http_info(document_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAGovernmentIdDocument200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling DocumentsApi->update_a_government_id_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **update_a_government_id_document_request** | [**UpdateAGovernmentIdDocumentRequest**](UpdateAGovernmentIdDocumentRequest.md) |  | [optional] |

### Return type

[**UpdateAGovernmentIdDocument200Response**](UpdateAGovernmentIdDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

