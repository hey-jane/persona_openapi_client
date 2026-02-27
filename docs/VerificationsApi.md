# PersonaAPIClient::VerificationsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**print_a_verification_as_pdf**](VerificationsApi.md#print_a_verification_as_pdf) | **GET** /verifications/{verification-id}/print | Print Verification PDF |
| [**redact_a_verification**](VerificationsApi.md#redact_a_verification) | **DELETE** /verifications/{verification-id} | Redact a Verification |
| [**retrieve_a_verification**](VerificationsApi.md#retrieve_a_verification) | **GET** /verifications/{verification-id} | Retrieve a Verification |


## print_a_verification_as_pdf

> File print_a_verification_as_pdf(verification_id, opts)

Print Verification PDF

Prints a verification in PDF format.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::VerificationsApi.new
verification_id = 'verification_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # Print Verification PDF
  result = api_instance.print_a_verification_as_pdf(verification_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling VerificationsApi->print_a_verification_as_pdf: #{e}"
end
```

#### Using the print_a_verification_as_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> print_a_verification_as_pdf_with_http_info(verification_id, opts)

```ruby
begin
  # Print Verification PDF
  data, status_code, headers = api_instance.print_a_verification_as_pdf_with_http_info(verification_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling VerificationsApi->print_a_verification_as_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## redact_a_verification

> <RedactAVerification200Response> redact_a_verification(verification_id, opts)

Redact a Verification

Permanently deletes personally identifiable information (PII) for a Verification. **This action cannot be undone**. This endpoint can be used to comply with privacy regulations such as GDPR / CCPA or to enforce data privacy.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::VerificationsApi.new
verification_id = 'verification_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # Redact a Verification
  result = api_instance.redact_a_verification(verification_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling VerificationsApi->redact_a_verification: #{e}"
end
```

#### Using the redact_a_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAVerification200Response>, Integer, Hash)> redact_a_verification_with_http_info(verification_id, opts)

```ruby
begin
  # Redact a Verification
  data, status_code, headers = api_instance.redact_a_verification_with_http_info(verification_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAVerification200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling VerificationsApi->redact_a_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |

### Return type

[**RedactAVerification200Response**](RedactAVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_a_verification

> <RetrieveAVerification200Response> retrieve_a_verification(verification_id, opts)

Retrieve a Verification

Retrieves the details of an existing Verification.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::VerificationsApi.new
verification_id = 'verification_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Verification
  result = api_instance.retrieve_a_verification(verification_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling VerificationsApi->retrieve_a_verification: #{e}"
end
```

#### Using the retrieve_a_verification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAVerification200Response>, Integer, Hash)> retrieve_a_verification_with_http_info(verification_id, opts)

```ruby
begin
  # Retrieve a Verification
  data, status_code, headers = api_instance.retrieve_a_verification_with_http_info(verification_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAVerification200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling VerificationsApi->retrieve_a_verification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAVerification200Response**](RetrieveAVerification200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

