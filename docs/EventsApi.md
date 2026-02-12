# PersonaAPIClient::EventsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_all_events**](EventsApi.md#list_all_events) | **GET** /events | List all Events |
| [**retrieve_an_event**](EventsApi.md#retrieve_an_event) | **GET** /events/{event-id} | Retrieve an Event |


## list_all_events

> <ListAllEvents200Response> list_all_events(opts)

List all Events

Returns a list of your organization's events. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::EventsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  filter: PersonaAPIClient::ListAllEventsFilterParameter.new # ListAllEventsFilterParameter | 
}

begin
  # List all Events
  result = api_instance.list_all_events(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling EventsApi->list_all_events: #{e}"
end
```

#### Using the list_all_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllEvents200Response>, Integer, Hash)> list_all_events_with_http_info(opts)

```ruby
begin
  # List all Events
  data, status_code, headers = api_instance.list_all_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllEvents200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling EventsApi->list_all_events_with_http_info: #{e}"
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
| **filter** | [**ListAllEventsFilterParameter**](.md) |  | [optional] |

### Return type

[**ListAllEvents200Response**](ListAllEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_an_event

> <RetrieveAnEvent200Response> retrieve_an_event(event_id, opts)

Retrieve an Event

Retrieves the details of an existing event.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::EventsApi.new
event_id = 'event_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve an Event
  result = api_instance.retrieve_an_event(event_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_an_event: #{e}"
end
```

#### Using the retrieve_an_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAnEvent200Response>, Integer, Hash)> retrieve_an_event_with_http_info(event_id, opts)

```ruby
begin
  # Retrieve an Event
  data, status_code, headers = api_instance.retrieve_an_event_with_http_info(event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAnEvent200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling EventsApi->retrieve_an_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAnEvent200Response**](RetrieveAnEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

