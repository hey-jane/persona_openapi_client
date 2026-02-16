# PersonaAPIClient::TransactionsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_transaction**](TransactionsApi.md#create_a_transaction) | **POST** /transactions | Create a Transaction |
| [**create_a_transaction_label**](TransactionsApi.md#create_a_transaction_label) | **POST** /transactions/{transaction-id}/label | Create a Transaction label |
| [**list_all_transactions**](TransactionsApi.md#list_all_transactions) | **GET** /transactions | List all Transactions |
| [**redact_a_transaction**](TransactionsApi.md#redact_a_transaction) | **DELETE** /transactions/{transaction-id} | Redact a Transaction |
| [**redact_transaction_biometrics**](TransactionsApi.md#redact_transaction_biometrics) | **POST** /transactions/{transaction-id}/redact-biometrics | Redact Transaction biometrics |
| [**retrieve_a_transaction**](TransactionsApi.md#retrieve_a_transaction) | **GET** /transactions/{transaction-id} | Retrieve a Transaction |
| [**transactions_add_tag**](TransactionsApi.md#transactions_add_tag) | **POST** /transactions/{transaction-id}/add-tag | Add tag to Transaction |
| [**transactions_remove_tag**](TransactionsApi.md#transactions_remove_tag) | **POST** /transactions/{transaction-id}/remove-tag | Remove tag from a Transaction |
| [**transactions_set_tags**](TransactionsApi.md#transactions_set_tags) | **POST** /transactions/{transaction-id}/set-tags | Sets tags on a Transaction |
| [**update_a_transaction**](TransactionsApi.md#update_a_transaction) | **PATCH** /transactions/{transaction-id} | Update a Transaction |


## create_a_transaction

> <CreateATransaction200Response> create_a_transaction(opts)

Create a Transaction

Creates a new Transaction for a specific transaction type in your organization.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_transaction_request: PersonaAPIClient::CreateATransactionRequest.new # CreateATransactionRequest | 
}

begin
  # Create a Transaction
  result = api_instance.create_a_transaction(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->create_a_transaction: #{e}"
end
```

#### Using the create_a_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateATransaction200Response>, Integer, Hash)> create_a_transaction_with_http_info(opts)

```ruby
begin
  # Create a Transaction
  data, status_code, headers = api_instance.create_a_transaction_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateATransaction200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->create_a_transaction_with_http_info: #{e}"
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
| **create_a_transaction_request** | [**CreateATransactionRequest**](CreateATransactionRequest.md) |  | [optional] |

### Return type

[**CreateATransaction200Response**](CreateATransaction200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_a_transaction_label

> <UpdateATransaction200Response> create_a_transaction_label(transaction_id, opts)

Create a Transaction label

Create a new label for an existing Transaction.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the transaction to create a label for.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_transaction_label_request: PersonaAPIClient::CreateATransactionLabelRequest.new # CreateATransactionLabelRequest | 
}

begin
  # Create a Transaction label
  result = api_instance.create_a_transaction_label(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->create_a_transaction_label: #{e}"
end
```

#### Using the create_a_transaction_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateATransaction200Response>, Integer, Hash)> create_a_transaction_label_with_http_info(transaction_id, opts)

```ruby
begin
  # Create a Transaction label
  data, status_code, headers = api_instance.create_a_transaction_label_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateATransaction200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->create_a_transaction_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID of the transaction to create a label for. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **create_a_transaction_label_request** | [**CreateATransactionLabelRequest**](CreateATransactionLabelRequest.md) |  | [optional] |

### Return type

[**UpdateATransaction200Response**](UpdateATransaction200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_all_transactions

> <ListAllTransactions200Response> list_all_transactions(opts)

List all Transactions

Returns a list of your organization's transactions. Note that this endpoint aggregates transactions across all transaction type(s). See [Pagination](https://docs.withpersona.com/pagination) for more details about handling the response. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  filter: PersonaAPIClient::ListAllTransactionsFilterParameter.new # ListAllTransactionsFilterParameter | 
}

begin
  # List all Transactions
  result = api_instance.list_all_transactions(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->list_all_transactions: #{e}"
end
```

#### Using the list_all_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllTransactions200Response>, Integer, Hash)> list_all_transactions_with_http_info(opts)

```ruby
begin
  # List all Transactions
  data, status_code, headers = api_instance.list_all_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllTransactions200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->list_all_transactions_with_http_info: #{e}"
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
| **filter** | [**ListAllTransactionsFilterParameter**](.md) |  | [optional] |

### Return type

[**ListAllTransactions200Response**](ListAllTransactions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## redact_a_transaction

> <CreateATransaction201Response> redact_a_transaction(transaction_id, opts)

Redact a Transaction

Permanently deletes personally identifiable information (PII) for a Transaction. The response indicates a successful redaction of the Transaction. Redaction of the Transaction's associated child objects is done asynchronously and may take some time before all associated child objects are fully redacted. **This action cannot be undone**.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Redact a Transaction
  result = api_instance.redact_a_transaction(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->redact_a_transaction: #{e}"
end
```

#### Using the redact_a_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateATransaction201Response>, Integer, Hash)> redact_a_transaction_with_http_info(transaction_id, opts)

```ruby
begin
  # Redact a Transaction
  data, status_code, headers = api_instance.redact_a_transaction_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateATransaction201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->redact_a_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**CreateATransaction201Response**](CreateATransaction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## redact_transaction_biometrics

> <CreateATransaction201Response> redact_transaction_biometrics(transaction_id, opts)

Redact Transaction biometrics

Permanently deletes biometric data for a Transaction AND all its associated objects. **This action cannot be undone**.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Redact Transaction biometrics
  result = api_instance.redact_transaction_biometrics(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->redact_transaction_biometrics: #{e}"
end
```

#### Using the redact_transaction_biometrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateATransaction201Response>, Integer, Hash)> redact_transaction_biometrics_with_http_info(transaction_id, opts)

```ruby
begin
  # Redact Transaction biometrics
  data, status_code, headers = api_instance.redact_transaction_biometrics_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateATransaction201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->redact_transaction_biometrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**CreateATransaction201Response**](CreateATransaction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_a_transaction

> <RetrieveATransaction200Response> retrieve_a_transaction(transaction_id, opts)

Retrieve a Transaction

Retrieves the details of an existing Transaction.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the transaction to retrieve.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Transaction
  result = api_instance.retrieve_a_transaction(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->retrieve_a_transaction: #{e}"
end
```

#### Using the retrieve_a_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveATransaction200Response>, Integer, Hash)> retrieve_a_transaction_with_http_info(transaction_id, opts)

```ruby
begin
  # Retrieve a Transaction
  data, status_code, headers = api_instance.retrieve_a_transaction_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveATransaction200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->retrieve_a_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID of the transaction to retrieve. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveATransaction200Response**](RetrieveATransaction200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## transactions_add_tag

> <CreateATransaction201Response> transactions_add_tag(transaction_id, opts)

Add tag to Transaction

Adds a tag to a Transaction. Create a new tag if the tag does not already exist. No effect if the transaction already has the tag.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the transaction to add tag on.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  transactions_add_tag_request: PersonaAPIClient::TransactionsAddTagRequest.new # TransactionsAddTagRequest | 
}

begin
  # Add tag to Transaction
  result = api_instance.transactions_add_tag(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_add_tag: #{e}"
end
```

#### Using the transactions_add_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateATransaction201Response>, Integer, Hash)> transactions_add_tag_with_http_info(transaction_id, opts)

```ruby
begin
  # Add tag to Transaction
  data, status_code, headers = api_instance.transactions_add_tag_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateATransaction201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_add_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID of the transaction to add tag on. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **transactions_add_tag_request** | [**TransactionsAddTagRequest**](TransactionsAddTagRequest.md) |  | [optional] |

### Return type

[**CreateATransaction201Response**](CreateATransaction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transactions_remove_tag

> <CreateATransaction201Response> transactions_remove_tag(transaction_id, opts)

Remove tag from a Transaction

Remove a tag from a transaction. No effect if the transaction does not have the tag.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the transaction to remove tag from.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  transactions_remove_tag_request: PersonaAPIClient::TransactionsRemoveTagRequest.new # TransactionsRemoveTagRequest | 
}

begin
  # Remove tag from a Transaction
  result = api_instance.transactions_remove_tag(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_remove_tag: #{e}"
end
```

#### Using the transactions_remove_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateATransaction201Response>, Integer, Hash)> transactions_remove_tag_with_http_info(transaction_id, opts)

```ruby
begin
  # Remove tag from a Transaction
  data, status_code, headers = api_instance.transactions_remove_tag_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateATransaction201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_remove_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID of the transaction to remove tag from. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **transactions_remove_tag_request** | [**TransactionsRemoveTagRequest**](TransactionsRemoveTagRequest.md) |  | [optional] |

### Return type

[**CreateATransaction201Response**](CreateATransaction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transactions_set_tags

> <CreateATransaction201Response> transactions_set_tags(transaction_id, opts)

Sets tags on a Transaction

Set the list of tags on a transaction. Remove all tags on the transaction that don't appear on the list. Add all tags on the transaction from the list.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the transaction to set tags on.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  transactions_set_tags_request: PersonaAPIClient::TransactionsSetTagsRequest.new # TransactionsSetTagsRequest | 
}

begin
  # Sets tags on a Transaction
  result = api_instance.transactions_set_tags(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_set_tags: #{e}"
end
```

#### Using the transactions_set_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateATransaction201Response>, Integer, Hash)> transactions_set_tags_with_http_info(transaction_id, opts)

```ruby
begin
  # Sets tags on a Transaction
  data, status_code, headers = api_instance.transactions_set_tags_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateATransaction201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->transactions_set_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID of the transaction to set tags on. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **transactions_set_tags_request** | [**TransactionsSetTagsRequest**](TransactionsSetTagsRequest.md) |  | [optional] |

### Return type

[**CreateATransaction201Response**](CreateATransaction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_transaction

> <UpdateATransaction200Response> update_a_transaction(transaction_id, opts)

Update a Transaction

Updates a Transaction that has been previously created.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::TransactionsApi.new
transaction_id = 'transaction_id_example' # String | ID of the transaction to update.
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  update_a_transaction_request: PersonaAPIClient::UpdateATransactionRequest.new # UpdateATransactionRequest | 
}

begin
  # Update a Transaction
  result = api_instance.update_a_transaction(transaction_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->update_a_transaction: #{e}"
end
```

#### Using the update_a_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateATransaction200Response>, Integer, Hash)> update_a_transaction_with_http_info(transaction_id, opts)

```ruby
begin
  # Update a Transaction
  data, status_code, headers = api_instance.update_a_transaction_with_http_info(transaction_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateATransaction200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling TransactionsApi->update_a_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | ID of the transaction to update. |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **update_a_transaction_request** | [**UpdateATransactionRequest**](UpdateATransactionRequest.md) |  | [optional] |

### Return type

[**UpdateATransaction200Response**](UpdateATransaction200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

