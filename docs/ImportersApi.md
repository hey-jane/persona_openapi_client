# PersonaAPIClient::ImportersApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**import_an_account**](ImportersApi.md#import_an_account) | **POST** /importer/accounts | Import Accounts |
| [**import_email_address_lists**](ImportersApi.md#import_email_address_lists) | **POST** /importer/list-item/email-addresses | Import Email Address Lists |
| [**import_geolocation_lists**](ImportersApi.md#import_geolocation_lists) | **POST** /importer/list-item/geolocations | Import Geolocation Lists |
| [**import_government_id_number_lists**](ImportersApi.md#import_government_id_number_lists) | **POST** /importer/list-item/government-id-numbers | Import Government ID Number Lists |
| [**import_ip_address_lists**](ImportersApi.md#import_ip_address_lists) | **POST** /importer/list-item/ip-addresses | Import IP Address Lists |
| [**import_name_lists**](ImportersApi.md#import_name_lists) | **POST** /importer/list-item/names | Import Name Lists |
| [**import_phone_number_lists**](ImportersApi.md#import_phone_number_lists) | **POST** /importer/list-item/phone-numbers | Import Phone Number Lists |
| [**list_all_importers**](ImportersApi.md#list_all_importers) | **GET** /importers | List all Importers |
| [**retrieve_an_importer**](ImportersApi.md#retrieve_an_importer) | **GET** /importers/{importer-id} | Retrieve an Importer |


## import_an_account

> <ImportAnAccount201Response> import_an_account(data, opts)

Import Accounts

Bulk import accounts by uploading a CSV file.  Each row should be the details for a new account. The columns we allow are:   - reference_id   - name_first   - name_middle   - name_last   - birthdate   - social_security_number   - tags

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportAnAccountRequestData.new({attributes: PersonaAPIClient::ImportAnAccountRequestDataAttributes.new({file: 'file_example'})}) # ImportAnAccountRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import Accounts
  result = api_instance.import_an_account(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_an_account: #{e}"
end
```

#### Using the import_an_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportAnAccount201Response>, Integer, Hash)> import_an_account_with_http_info(data, opts)

```ruby
begin
  # Import Accounts
  data, status_code, headers = api_instance.import_an_account_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportAnAccount201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_an_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportAnAccountRequestData**](ImportAnAccountRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportAnAccount201Response**](ImportAnAccount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## import_email_address_lists

> <ImportEmailAddressLists201Response> import_email_address_lists(data, opts)

Import Email Address Lists

Bulk import email address List Items by uploading a CSV file.  Each row should be the details for a new List Item. The columns we allow are:   - value   - match_type (either 'email_address' or 'domain')  A match_type of 'email_address' will need to match the entire email address of an individual, while a match_type of 'domain' will match on the email address domain of an individual (i.e. all email addresses with domain 'gmail.com').

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportEmailAddressListsRequestData.new({attributes: PersonaAPIClient::ImportEmailAddressListsRequestDataAttributes.new({file: 'file_example', list_id: 'list_id_example'})}) # ImportEmailAddressListsRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import Email Address Lists
  result = api_instance.import_email_address_lists(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_email_address_lists: #{e}"
end
```

#### Using the import_email_address_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportEmailAddressLists201Response>, Integer, Hash)> import_email_address_lists_with_http_info(data, opts)

```ruby
begin
  # Import Email Address Lists
  data, status_code, headers = api_instance.import_email_address_lists_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportEmailAddressLists201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_email_address_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportEmailAddressListsRequestData**](ImportEmailAddressListsRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportEmailAddressLists201Response**](ImportEmailAddressLists201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## import_geolocation_lists

> <ImportGeolocationLists201Response> import_geolocation_lists(data, opts)

Import Geolocation Lists

Bulk import geolocation List Items by uploading a CSV file.  Each row should be the details for a new List Item. The columns we allow are:   - latitude   - longitude   - radius_meters

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportEmailAddressListsRequestData.new({attributes: PersonaAPIClient::ImportEmailAddressListsRequestDataAttributes.new({file: 'file_example', list_id: 'list_id_example'})}) # ImportEmailAddressListsRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import Geolocation Lists
  result = api_instance.import_geolocation_lists(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_geolocation_lists: #{e}"
end
```

#### Using the import_geolocation_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportGeolocationLists201Response>, Integer, Hash)> import_geolocation_lists_with_http_info(data, opts)

```ruby
begin
  # Import Geolocation Lists
  data, status_code, headers = api_instance.import_geolocation_lists_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportGeolocationLists201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_geolocation_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportEmailAddressListsRequestData**](ImportEmailAddressListsRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportGeolocationLists201Response**](ImportGeolocationLists201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## import_government_id_number_lists

> <ImportGovernmentIdNumberLists201Response> import_government_id_number_lists(data, opts)

Import Government ID Number Lists

Bulk import government ID number List Items by uploading a CSV file.  Each row should be the details for a new List Item. The columns we allow are:   - id_number   - id_class  Common values for id_class include `pp` for passport and `dl` for driver license. Please contact us or reach out to [support@withpersona.com](mailto:support@withpersona.com) if you need help getting id_class values.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportEmailAddressListsRequestData.new({attributes: PersonaAPIClient::ImportEmailAddressListsRequestDataAttributes.new({file: 'file_example', list_id: 'list_id_example'})}) # ImportEmailAddressListsRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import Government ID Number Lists
  result = api_instance.import_government_id_number_lists(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_government_id_number_lists: #{e}"
end
```

#### Using the import_government_id_number_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportGovernmentIdNumberLists201Response>, Integer, Hash)> import_government_id_number_lists_with_http_info(data, opts)

```ruby
begin
  # Import Government ID Number Lists
  data, status_code, headers = api_instance.import_government_id_number_lists_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportGovernmentIdNumberLists201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_government_id_number_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportEmailAddressListsRequestData**](ImportEmailAddressListsRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportGovernmentIdNumberLists201Response**](ImportGovernmentIdNumberLists201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## import_ip_address_lists

> <ImportIpAddressLists201Response> import_ip_address_lists(data, opts)

Import IP Address Lists

Bulk import IP address List Items by uploading a CSV file.  Each row should be the details for a new List Item. The columns we allow are:   - value  Both IPv4 and IPv6 are supported.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportEmailAddressListsRequestData.new({attributes: PersonaAPIClient::ImportEmailAddressListsRequestDataAttributes.new({file: 'file_example', list_id: 'list_id_example'})}) # ImportEmailAddressListsRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import IP Address Lists
  result = api_instance.import_ip_address_lists(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_ip_address_lists: #{e}"
end
```

#### Using the import_ip_address_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportIpAddressLists201Response>, Integer, Hash)> import_ip_address_lists_with_http_info(data, opts)

```ruby
begin
  # Import IP Address Lists
  data, status_code, headers = api_instance.import_ip_address_lists_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportIpAddressLists201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_ip_address_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportEmailAddressListsRequestData**](ImportEmailAddressListsRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportIpAddressLists201Response**](ImportIpAddressLists201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## import_name_lists

> <ImportNameLists201Response> import_name_lists(data, opts)

Import Name Lists

Bulk import name List Items by uploading a CSV file.  Each row should be the details for a new list item. The columns we allow are:   - name_first   - name_last

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportEmailAddressListsRequestData.new({attributes: PersonaAPIClient::ImportEmailAddressListsRequestDataAttributes.new({file: 'file_example', list_id: 'list_id_example'})}) # ImportEmailAddressListsRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import Name Lists
  result = api_instance.import_name_lists(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_name_lists: #{e}"
end
```

#### Using the import_name_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportNameLists201Response>, Integer, Hash)> import_name_lists_with_http_info(data, opts)

```ruby
begin
  # Import Name Lists
  data, status_code, headers = api_instance.import_name_lists_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportNameLists201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_name_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportEmailAddressListsRequestData**](ImportEmailAddressListsRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportNameLists201Response**](ImportNameLists201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## import_phone_number_lists

> <ImportPhoneNumberLists201Response> import_phone_number_lists(data, opts)

Import Phone Number Lists

Bulk import phone number List Items by uploading a CSV file.  Each row should be the details for a new list item. The columns we allow are:   - value

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
data = PersonaAPIClient::ImportEmailAddressListsRequestData.new({attributes: PersonaAPIClient::ImportEmailAddressListsRequestDataAttributes.new({file: 'file_example', list_id: 'list_id_example'})}) # ImportEmailAddressListsRequestData | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Import Phone Number Lists
  result = api_instance.import_phone_number_lists(data, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_phone_number_lists: #{e}"
end
```

#### Using the import_phone_number_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImportPhoneNumberLists201Response>, Integer, Hash)> import_phone_number_lists_with_http_info(data, opts)

```ruby
begin
  # Import Phone Number Lists
  data, status_code, headers = api_instance.import_phone_number_lists_with_http_info(data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImportPhoneNumberLists201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->import_phone_number_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ImportEmailAddressListsRequestData**](ImportEmailAddressListsRequestData.md) |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**ImportPhoneNumberLists201Response**](ImportPhoneNumberLists201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json


## list_all_importers

> <ListAllImporters200Response> list_all_importers(opts)

List all Importers

Returns a list of your organization's importers. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # List all Importers
  result = api_instance.list_all_importers(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->list_all_importers: #{e}"
end
```

#### Using the list_all_importers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllImporters200Response>, Integer, Hash)> list_all_importers_with_http_info(opts)

```ruby
begin
  # List all Importers
  data, status_code, headers = api_instance.list_all_importers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllImporters200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->list_all_importers_with_http_info: #{e}"
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

[**ListAllImporters200Response**](ListAllImporters200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_an_importer

> <RetrieveAnImporter200Response> retrieve_an_importer(importer_id, opts)

Retrieve an Importer

Retrieve the details of an existing importer.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ImportersApi.new
importer_id = 'importer_id_example' # String | String ID of the importer to fetch
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve an Importer
  result = api_instance.retrieve_an_importer(importer_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->retrieve_an_importer: #{e}"
end
```

#### Using the retrieve_an_importer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnImporter200Response>, Integer, Hash)> retrieve_an_importer_with_http_info(importer_id, opts)

```ruby
begin
  # Retrieve an Importer
  data, status_code, headers = api_instance.retrieve_an_importer_with_http_info(importer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnImporter200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ImportersApi->retrieve_an_importer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **importer_id** | **String** | String ID of the importer to fetch |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnImporter200Response**](RetrieveAnImporter200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

