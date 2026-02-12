# PersonaAPIClient::InquiryTemplatesApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_all_inquiry_templates**](InquiryTemplatesApi.md#list_all_inquiry_templates) | **GET** /inquiry-templates | List all Inquiry Templates |
| [**retrieve_an_inquiry_template**](InquiryTemplatesApi.md#retrieve_an_inquiry_template) | **GET** /inquiry-templates/{inquiry-template-id} | Retrieve an Inquiry Template |


## list_all_inquiry_templates

> <ListAllInquiryTemplates200Response> list_all_inquiry_templates(opts)

List all Inquiry Templates

Retrieves a list of your organization's Inquiry Templates.  Note: You must use a production API key to access this endpoint. For security reasons, we do not expose organization-level resources like Inquiry Templates in Sandbox via API. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiryTemplatesApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # List all Inquiry Templates
  result = api_instance.list_all_inquiry_templates(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiryTemplatesApi->list_all_inquiry_templates: #{e}"
end
```

#### Using the list_all_inquiry_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllInquiryTemplates200Response>, Integer, Hash)> list_all_inquiry_templates_with_http_info(opts)

```ruby
begin
  # List all Inquiry Templates
  data, status_code, headers = api_instance.list_all_inquiry_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllInquiryTemplates200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiryTemplatesApi->list_all_inquiry_templates_with_http_info: #{e}"
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

[**ListAllInquiryTemplates200Response**](ListAllInquiryTemplates200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_an_inquiry_template

> <RetrieveAnInquiryTemplate200Response> retrieve_an_inquiry_template(inquiry_template_id, opts)

Retrieve an Inquiry Template

Retrieves details of a specific Inquiry Template by ID.  Note: You must use a production API key to access this endpoint. For security reasons, we do not expose organization-level resources like Inquiry Templates in Sandbox via API.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::InquiryTemplatesApi.new
inquiry_template_id = 'inquiry_template_id_example' # String | Inquiry Template ID
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve an Inquiry Template
  result = api_instance.retrieve_an_inquiry_template(inquiry_template_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiryTemplatesApi->retrieve_an_inquiry_template: #{e}"
end
```

#### Using the retrieve_an_inquiry_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnInquiryTemplate200Response>, Integer, Hash)> retrieve_an_inquiry_template_with_http_info(inquiry_template_id, opts)

```ruby
begin
  # Retrieve an Inquiry Template
  data, status_code, headers = api_instance.retrieve_an_inquiry_template_with_http_info(inquiry_template_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnInquiryTemplate200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling InquiryTemplatesApi->retrieve_an_inquiry_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inquiry_template_id** | **String** | Inquiry Template ID |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnInquiryTemplate200Response**](RetrieveAnInquiryTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

