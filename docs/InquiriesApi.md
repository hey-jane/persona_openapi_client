# PersonaAPIClient::InquiriesApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_an_inquiry**](InquiriesApi.md#approve_an_inquiry) | **POST** /inquiries/{inquiry-id}/approve | Approve an Inquiry |
| [**create_an_inquiry**](InquiriesApi.md#create_an_inquiry) | **POST** /inquiries | Create an Inquiry |
| [**decline_an_inquiry**](InquiriesApi.md#decline_an_inquiry) | **POST** /inquiries/{inquiry-id}/decline | Decline an Inquiry |
| [**expire_an_inquiry**](InquiriesApi.md#expire_an_inquiry) | **POST** /inquiries/{inquiry-id}/expire | Expire an Inquiry |
| [**generate_a_one_time_link**](InquiriesApi.md#generate_a_one_time_link) | **POST** /inquiries/{inquiry-id}/generate-one-time-link | Generate a one-time link for an Inquiry |
| [**inquiries_add_tag**](InquiriesApi.md#inquiries_add_tag) | **POST** /inquiries/{inquiry-id}/add-tag | Add tag to an Inquiry |
| [**inquiries_perform_simulate_actions**](InquiriesApi.md#inquiries_perform_simulate_actions) | **POST** /inquiries/{inquiry-id}/perform-simulate-actions | Perform Simulate Actions |
| [**inquiries_remove_tag**](InquiriesApi.md#inquiries_remove_tag) | **POST** /inquiries/{inquiry-id}/remove-tag | Remove tag from an Inquiry |
| [**inquiries_set_all_tags**](InquiriesApi.md#inquiries_set_all_tags) | **POST** /inquiries/{inquiry-id}/set-tags | Set tags on an Inquiry |
| [**list_all_inquiries**](InquiriesApi.md#list_all_inquiries) | **GET** /inquiries | List all Inquiries |
| [**mark_an_inquiry_for_review**](InquiriesApi.md#mark_an_inquiry_for_review) | **POST** /inquiries/{inquiry-id}/mark-for-review | Mark an Inquiry for manual review |
| [**print_an_inquiry_pdf**](InquiriesApi.md#print_an_inquiry_pdf) | **GET** /inquiries/{inquiry-id}/print | Print Inquiry PDF |
| [**redact_an_inquiry**](InquiriesApi.md#redact_an_inquiry) | **DELETE** /inquiries/{inquiry-id} | Redact an Inquiry |
| [**resume_an_inquiry**](InquiriesApi.md#resume_an_inquiry) | **POST** /inquiries/{inquiry-id}/resume | Resume an Inquiry |
| [**retrieve_an_inquiry**](InquiriesApi.md#retrieve_an_inquiry) | **GET** /inquiries/{inquiry-id} | Retrieve an Inquiry |
| [**update_an_inquiry**](InquiriesApi.md#update_an_inquiry) | **PATCH** /inquiries/{inquiry-id} | Update an Inquiry |


## approve_an_inquiry

> <RedactAnInquiry200Response> approve_an_inquiry(inquiry_id, opts)

Approve an Inquiry

Approves an Inquiry.  Note that this action will trigger any associated workflows and webhooks.  Approving an inquiry will prevent further progress on the inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  approve_an_inquiry_request: PersonaAPIClient::ApproveAnInquiryRequest.new # ApproveAnInquiryRequest | 
}

begin
  # Approve an Inquiry
  result = api_instance.approve_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->approve_an_inquiry: #{e}"
end
```

#### Using the approve_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> approve_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Approve an Inquiry
  data, status_code, headers = api_instance.approve_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->approve_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **approve_an_inquiry_request** | [**ApproveAnInquiryRequest**](ApproveAnInquiryRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_an_inquiry

> <CreateAnInquiry201Response> create_an_inquiry(opts)

Create an Inquiry

Creates a new inquiry with optional pre-filled attributes.  See [Sessions](https://docs.withpersona.com/inquiry-sessions) for how to continue the inquiry in [Embedded Flow](https://docs.withpersona.com/embedded-flow) or [Hosted Flow](https://docs.withpersona.com/hosted-flow).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_an_inquiry_request: PersonaAPIClient::CreateAnInquiryRequest.new({data: PersonaAPIClient::CreateAnInquiryRequestData.new({attributes: PersonaAPIClient::CreateAnInquiryRequestDataAttributes.new})}) # CreateAnInquiryRequest | 
}

begin
  # Create an Inquiry
  result = api_instance.create_an_inquiry(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->create_an_inquiry: #{e}"
end
```

#### Using the create_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAnInquiry201Response>, Integer, Hash)> create_an_inquiry_with_http_info(opts)

```ruby
begin
  # Create an Inquiry
  data, status_code, headers = api_instance.create_an_inquiry_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAnInquiry201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->create_an_inquiry_with_http_info: #{e}"
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
| **create_an_inquiry_request** | [**CreateAnInquiryRequest**](CreateAnInquiryRequest.md) |  | [optional] |

### Return type

[**CreateAnInquiry201Response**](CreateAnInquiry201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## decline_an_inquiry

> <RedactAnInquiry200Response> decline_an_inquiry(inquiry_id, opts)

Decline an Inquiry

Declines an Inquiry.  Note that this action will trigger any associated workflows and webhooks.  Declining an inquiry will prevent further progress on the inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  approve_an_inquiry_request: PersonaAPIClient::ApproveAnInquiryRequest.new # ApproveAnInquiryRequest | 
}

begin
  # Decline an Inquiry
  result = api_instance.decline_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->decline_an_inquiry: #{e}"
end
```

#### Using the decline_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> decline_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Decline an Inquiry
  data, status_code, headers = api_instance.decline_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->decline_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **approve_an_inquiry_request** | [**ApproveAnInquiryRequest**](ApproveAnInquiryRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## expire_an_inquiry

> <RedactAnInquiry200Response> expire_an_inquiry(inquiry_id, opts)

Expire an Inquiry

Expires an Inquiry and all sessions on the Inquiry. Cancels any pending Verifications on the inquiry.  The Inquiry can still be resumed after expiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Expire an Inquiry
  result = api_instance.expire_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->expire_an_inquiry: #{e}"
end
```

#### Using the expire_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> expire_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Expire an Inquiry
  data, status_code, headers = api_instance.expire_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->expire_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_a_one_time_link

> <GenerateAOneTimeLink200Response> generate_a_one_time_link(inquiry_id, opts)

Generate a one-time link for an Inquiry

Creates a new inquiry session and returns `meta.one-time-link`.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | Inquiry ID (starts with \"inq_\")
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  generate_a_one_time_link_request: PersonaAPIClient::GenerateAOneTimeLinkRequest.new # GenerateAOneTimeLinkRequest | 
}

begin
  # Generate a one-time link for an Inquiry
  result = api_instance.generate_a_one_time_link(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->generate_a_one_time_link: #{e}"
end
```

#### Using the generate_a_one_time_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateAOneTimeLink200Response>, Integer, Hash)> generate_a_one_time_link_with_http_info(inquiry_id, opts)

```ruby
begin
  # Generate a one-time link for an Inquiry
  data, status_code, headers = api_instance.generate_a_one_time_link_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateAOneTimeLink200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->generate_a_one_time_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** | Inquiry ID (starts with \&quot;inq_\&quot;) |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **generate_a_one_time_link_request** | [**GenerateAOneTimeLinkRequest**](GenerateAOneTimeLinkRequest.md) |  | [optional] |

### Return type

[**GenerateAOneTimeLink200Response**](GenerateAOneTimeLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inquiries_add_tag

> <RedactAnInquiry200Response> inquiries_add_tag(inquiry_id, opts)

Add tag to an Inquiry

Adds a new tag to an Inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  inquiries_add_tag_request: PersonaAPIClient::InquiriesAddTagRequest.new # InquiriesAddTagRequest | 
}

begin
  # Add tag to an Inquiry
  result = api_instance.inquiries_add_tag(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_add_tag: #{e}"
end
```

#### Using the inquiries_add_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> inquiries_add_tag_with_http_info(inquiry_id, opts)

```ruby
begin
  # Add tag to an Inquiry
  data, status_code, headers = api_instance.inquiries_add_tag_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_add_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **inquiries_add_tag_request** | [**InquiriesAddTagRequest**](InquiriesAddTagRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inquiries_perform_simulate_actions

> <RedactAnInquiry200Response> inquiries_perform_simulate_actions(inquiry_id, opts)

Perform Simulate Actions

Performs a series of simulated actions on a Sandbox Inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  inquiries_perform_simulate_actions_request: PersonaAPIClient::InquiriesPerformSimulateActionsRequest.new({meta: PersonaAPIClient::InquiriesPerformSimulateActionsRequestMeta.new({simulate_actions: [{"type": "start_inquiry"}, {"type": "create_failed_verification", "data": {"verification-template-id": "vtmpl_CCLT7pvBZM8z5fumdb3QvW5cSrdr"}}, {"type": "create_passed_verification", "data": {"verification-template-id": "vtmpl_CCLT7pvBZM8z5fumdb3QvW5cSrdr"}}, {"type": "complete_inquiry"}, {"type": "approve_inquiry"}]})}) # InquiriesPerformSimulateActionsRequest | 
}

begin
  # Perform Simulate Actions
  result = api_instance.inquiries_perform_simulate_actions(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_perform_simulate_actions: #{e}"
end
```

#### Using the inquiries_perform_simulate_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> inquiries_perform_simulate_actions_with_http_info(inquiry_id, opts)

```ruby
begin
  # Perform Simulate Actions
  data, status_code, headers = api_instance.inquiries_perform_simulate_actions_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_perform_simulate_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **inquiries_perform_simulate_actions_request** | [**InquiriesPerformSimulateActionsRequest**](InquiriesPerformSimulateActionsRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inquiries_remove_tag

> <RedactAnInquiry200Response> inquiries_remove_tag(inquiry_id, opts)

Remove tag from an Inquiry

Removes an existing tag from an Inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  inquiries_add_tag_request: PersonaAPIClient::InquiriesAddTagRequest.new # InquiriesAddTagRequest | 
}

begin
  # Remove tag from an Inquiry
  result = api_instance.inquiries_remove_tag(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_remove_tag: #{e}"
end
```

#### Using the inquiries_remove_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> inquiries_remove_tag_with_http_info(inquiry_id, opts)

```ruby
begin
  # Remove tag from an Inquiry
  data, status_code, headers = api_instance.inquiries_remove_tag_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_remove_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **inquiries_add_tag_request** | [**InquiriesAddTagRequest**](InquiriesAddTagRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inquiries_set_all_tags

> <RedactAnInquiry200Response> inquiries_set_all_tags(inquiry_id, opts)

Set tags on an Inquiry

Sets all tags on an Inquiry. Any tags that are not provided in the request will be removed.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  inquiries_set_all_tags_request: PersonaAPIClient::InquiriesSetAllTagsRequest.new # InquiriesSetAllTagsRequest | 
}

begin
  # Set tags on an Inquiry
  result = api_instance.inquiries_set_all_tags(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_set_all_tags: #{e}"
end
```

#### Using the inquiries_set_all_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> inquiries_set_all_tags_with_http_info(inquiry_id, opts)

```ruby
begin
  # Set tags on an Inquiry
  data, status_code, headers = api_instance.inquiries_set_all_tags_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->inquiries_set_all_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **inquiries_set_all_tags_request** | [**InquiriesSetAllTagsRequest**](InquiriesSetAllTagsRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_all_inquiries

> <ListAllInquiries200Response> list_all_inquiries(opts)

List all Inquiries

Returns a list of your organization's inquiries.  Note that this endpoint aggregates inquiries across all inquiry template(s). See [Pagination](https://docs.withpersona.com/pagination) for more details about handling the response. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  filter: PersonaAPIClient::ListAllInquiriesFilterParameter.new # ListAllInquiriesFilterParameter | 
}

begin
  # List all Inquiries
  result = api_instance.list_all_inquiries(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->list_all_inquiries: #{e}"
end
```

#### Using the list_all_inquiries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllInquiries200Response>, Integer, Hash)> list_all_inquiries_with_http_info(opts)

```ruby
begin
  # List all Inquiries
  data, status_code, headers = api_instance.list_all_inquiries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllInquiries200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->list_all_inquiries_with_http_info: #{e}"
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
| **filter** | [**ListAllInquiriesFilterParameter**](.md) |  | [optional] |

### Return type

[**ListAllInquiries200Response**](ListAllInquiries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_an_inquiry_for_review

> <RedactAnInquiry200Response> mark_an_inquiry_for_review(inquiry_id, opts)

Mark an Inquiry for manual review

Marks an Inquiry for manual review. Inquiries that are already approved or declined cannot be marked for review.  Note that this action will trigger any associated workflows and webhooks.  Marking an inquiry for review will prevent further progress on the inquiry.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Mark an Inquiry for manual review
  result = api_instance.mark_an_inquiry_for_review(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->mark_an_inquiry_for_review: #{e}"
end
```

#### Using the mark_an_inquiry_for_review_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> mark_an_inquiry_for_review_with_http_info(inquiry_id, opts)

```ruby
begin
  # Mark an Inquiry for manual review
  data, status_code, headers = api_instance.mark_an_inquiry_for_review_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->mark_an_inquiry_for_review_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## print_an_inquiry_pdf

> <Null> print_an_inquiry_pdf(inquiry_id, opts)

Print Inquiry PDF

Prints an Inquiry as PDF.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # Print Inquiry PDF
  result = api_instance.print_an_inquiry_pdf(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->print_an_inquiry_pdf: #{e}"
end
```

#### Using the print_an_inquiry_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Null>, Integer, Hash)> print_an_inquiry_pdf_with_http_info(inquiry_id, opts)

```ruby
begin
  # Print Inquiry PDF
  data, status_code, headers = api_instance.print_an_inquiry_pdf_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Null>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->print_an_inquiry_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |

### Return type

[**Null**](Null.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, application/json


## redact_an_inquiry

> <RedactAnInquiry200Response> redact_an_inquiry(inquiry_id, opts)

Redact an Inquiry

Permanently deletes personally identifiable information (PII) for an Inquiry and all associated Verifications, Reports, or other Persona resources. The response indicates a successful redaction of the Inquiry. Redaction of the Inquiry's associated child objects are done asynchronously and may take some time before all associated child objects are fully redacted. **This action cannot be undone**.  This endpoint can be used to comply with privacy regulations such as GDPR / CCPA or to enforce data privacy.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Redact an Inquiry
  result = api_instance.redact_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->redact_an_inquiry: #{e}"
end
```

#### Using the redact_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> redact_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Redact an Inquiry
  data, status_code, headers = api_instance.redact_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->redact_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resume_an_inquiry

> <ResumeAnInquiry200Response> resume_an_inquiry(inquiry_id, opts)

Resume an Inquiry

Creates a session token that is returned as `meta.session-token`. If the inquiry's status is `expired`, changes the status to `pending`. The `session-token` must be included when loading the inquiry flow if the inquiry's status is `pending`. This endpoint will error if the inquiry is redacted. This endpoint first tries to reuse any existing valid unused [sessions](https://docs.withpersona.com/inquiry-sessions). If none exist, a new session is created. For more information, see [Resuming Inquiries](https://docs.withpersona.com/resuming-inquiries).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Resume an Inquiry
  result = api_instance.resume_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->resume_an_inquiry: #{e}"
end
```

#### Using the resume_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResumeAnInquiry200Response>, Integer, Hash)> resume_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Resume an Inquiry
  data, status_code, headers = api_instance.resume_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResumeAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->resume_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ResumeAnInquiry200Response**](ResumeAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_an_inquiry

> <RetrieveAnInquiry200Response> retrieve_an_inquiry(inquiry_id, opts)

Retrieve an Inquiry

Retrieves the details of an existing Inquiry.  In the [Embedded Flow](https://docs.withpersona.com/embedded-flow), the `inquiry-id` is the first parameter of the onStart callback. In the [Hosted Flow](https://docs.withpersona.com/hosted-flow), the `inquiry-id` is a query parameter in the onComplete callback.  Template information will be found in `data.relationships.inquiry-template` if the inquiry is a Dynamic Flow inquiry, and in `data.relationships.template` if the inquiry is a Legacy 2.0 inquiry. For more information, see [Dynamic Flow vs. Legacy Templates](https://docs.withpersona.com/inquiry-templates#dynamic-flow-vs-legacy-templates).

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve an Inquiry
  result = api_instance.retrieve_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->retrieve_an_inquiry: #{e}"
end
```

#### Using the retrieve_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnInquiry200Response>, Integer, Hash)> retrieve_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Retrieve an Inquiry
  data, status_code, headers = api_instance.retrieve_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->retrieve_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnInquiry200Response**](RetrieveAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_an_inquiry

> <RedactAnInquiry200Response> update_an_inquiry(inquiry_id, opts)

Update an Inquiry

Updates an existing Inquiry.  Note that if you use webhooks, updates to inquiries that are not in progress can result in data getting out of sync. For example, updating a completed Inquiry will not cause your Inquiry completed webhook to retrigger.  Inquiries represent a snapshot of data collected from an individual, so we generally do not recommend updating an Inquiry's data after the Inquiry has been finalized.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiriesApi.new
inquiry_id = 'inquiry_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  update_an_inquiry_request: PersonaAPIClient::UpdateAnInquiryRequest.new # UpdateAnInquiryRequest | 
}

begin
  # Update an Inquiry
  result = api_instance.update_an_inquiry(inquiry_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->update_an_inquiry: #{e}"
end
```

#### Using the update_an_inquiry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RedactAnInquiry200Response>, Integer, Hash)> update_an_inquiry_with_http_info(inquiry_id, opts)

```ruby
begin
  # Update an Inquiry
  data, status_code, headers = api_instance.update_an_inquiry_with_http_info(inquiry_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RedactAnInquiry200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiriesApi->update_an_inquiry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **update_an_inquiry_request** | [**UpdateAnInquiryRequest**](UpdateAnInquiryRequest.md) |  | [optional] |

### Return type

[**RedactAnInquiry200Response**](RedactAnInquiry200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

