# PersonaAPIClient::ReportsApi

All URIs are relative to *https://api.withpersona.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_a_report**](ReportsApi.md#create_a_report) | **POST** /reports | Create a Report |
| [**dismiss_matches**](ReportsApi.md#dismiss_matches) | **POST** /reports/{report-id}/dismiss | Report Action: Dismiss Matches |
| [**list_all_reports**](ReportsApi.md#list_all_reports) | **GET** /reports | List all Reports |
| [**list_report_history**](ReportsApi.md#list_report_history) | **GET** /reports/{report-id}/history | List Report history |
| [**print_report_pdf**](ReportsApi.md#print_report_pdf) | **GET** /reports/{report-id}/print | Print Report PDF |
| [**redact_a_report**](ReportsApi.md#redact_a_report) | **DELETE** /reports/{report-id} | Redact a Report |
| [**report_action_pause_continuous_monitoring**](ReportsApi.md#report_action_pause_continuous_monitoring) | **POST** /reports/{report-id}/pause | Report Action: Pause Continuous Monitoring |
| [**report_action_re_run_report**](ReportsApi.md#report_action_re_run_report) | **POST** /reports/{report-id}/run | Report Action: Re-run Report |
| [**report_action_resume_continuous_monitoring**](ReportsApi.md#report_action_resume_continuous_monitoring) | **POST** /reports/{report-id}/resume | Report Action: Resume Continuous Monitoring |
| [**reports_add_tag**](ReportsApi.md#reports_add_tag) | **POST** /reports/{report-id}/add-tag | Add tag to a Report |
| [**reports_remove_tag**](ReportsApi.md#reports_remove_tag) | **POST** /reports/{report-id}/remove-tag | Remove tag from a Report |
| [**reports_set_all_tags**](ReportsApi.md#reports_set_all_tags) | **POST** /reports/{report-id}/set-tags | Set tags on a Report |
| [**retrieve_a_report**](ReportsApi.md#retrieve_a_report) | **GET** /reports/{report-id} | Retrieve a Report |


## create_a_report

> <CreateAReport201Response> create_a_report(opts)

Create a Report

Creates a new Report of any type.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  create_a_report_request: PersonaAPIClient::CreateAReportRequest.new # CreateAReportRequest | 
}

begin
  # Create a Report
  result = api_instance.create_a_report(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->create_a_report: #{e}"
end
```

#### Using the create_a_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAReport201Response>, Integer, Hash)> create_a_report_with_http_info(opts)

```ruby
begin
  # Create a Report
  data, status_code, headers = api_instance.create_a_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAReport201Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->create_a_report_with_http_info: #{e}"
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
| **create_a_report_request** | [**CreateAReportRequest**](CreateAReportRequest.md) |  | [optional] |

### Return type

[**CreateAReport201Response**](CreateAReport201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## dismiss_matches

> <RetrieveAReport200Response> dismiss_matches(report_id, opts)

Report Action: Dismiss Matches

Dismisses active matches for supported report types

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  dismiss_matches_request: PersonaAPIClient::DismissMatchesRequest.new({data: PersonaAPIClient::DismissMatchesRequestData.new}) # DismissMatchesRequest | 
}

begin
  # Report Action: Dismiss Matches
  result = api_instance.dismiss_matches(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->dismiss_matches: #{e}"
end
```

#### Using the dismiss_matches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> dismiss_matches_with_http_info(report_id, opts)

```ruby
begin
  # Report Action: Dismiss Matches
  data, status_code, headers = api_instance.dismiss_matches_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->dismiss_matches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **dismiss_matches_request** | [**DismissMatchesRequest**](DismissMatchesRequest.md) |  | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_all_reports

> <ListAllReports200Response> list_all_reports(opts)

List all Reports

Returns a list of all your organization's Reports. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new, # ListAllAccountsPageParameter | 
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  filter: PersonaAPIClient::ListAllReportsFilterParameter.new # ListAllReportsFilterParameter | 
}

begin
  # List all Reports
  result = api_instance.list_all_reports(opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->list_all_reports: #{e}"
end
```

#### Using the list_all_reports_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAllReports200Response>, Integer, Hash)> list_all_reports_with_http_info(opts)

```ruby
begin
  # List all Reports
  data, status_code, headers = api_instance.list_all_reports_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAllReports200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->list_all_reports_with_http_info: #{e}"
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
| **filter** | [**ListAllReportsFilterParameter**](.md) |  | [optional] |

### Return type

[**ListAllReports200Response**](ListAllReports200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_report_history

> <ListReportHistory200Response> list_report_history(report_id, opts)

List Report history

Retrieves the history of an existing Report, including runs and actions. See [Pagination](https://docs.withpersona.com/pagination) for more details about handling the response. Results are returned in reverse chronological order, with the most recently created objects first.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  page: PersonaAPIClient::ListAllAccountsPageParameter.new # ListAllAccountsPageParameter | 
}

begin
  # List Report history
  result = api_instance.list_report_history(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->list_report_history: #{e}"
end
```

#### Using the list_report_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReportHistory200Response>, Integer, Hash)> list_report_history_with_http_info(report_id, opts)

```ruby
begin
  # List Report history
  data, status_code, headers = api_instance.list_report_history_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReportHistory200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->list_report_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **page** | [**ListAllAccountsPageParameter**](.md) |  | [optional] |

### Return type

[**ListReportHistory200Response**](ListReportHistory200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## print_report_pdf

> File print_report_pdf(report_id, opts)

Print Report PDF

Prints a report in PDF format.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08 # ApiVersion | 
}

begin
  # Print Report PDF
  result = api_instance.print_report_pdf(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->print_report_pdf: #{e}"
end
```

#### Using the print_report_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> print_report_pdf_with_http_info(report_id, opts)

```ruby
begin
  # Print Report PDF
  data, status_code, headers = api_instance.print_report_pdf_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->print_report_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
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


## redact_a_report

> <RetrieveAReport200Response> redact_a_report(report_id, opts)

Redact a Report

Permanently deletes personally identifiable information (PII) for a Report.  This endpoint can be used to comply with privacy regulations such as GDPR / CCPA or to enforce data privacy.  Note that this will only delete the report -- it does not delete associated accounts, inquiries, verifications, or other Persona resources.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Redact a Report
  result = api_instance.redact_a_report(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->redact_a_report: #{e}"
end
```

#### Using the redact_a_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> redact_a_report_with_http_info(report_id, opts)

```ruby
begin
  # Redact a Report
  data, status_code, headers = api_instance.redact_a_report_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->redact_a_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_action_pause_continuous_monitoring

> <RetrieveAReport200Response> report_action_pause_continuous_monitoring(report_id, opts)

Report Action: Pause Continuous Monitoring

Pauses continuous monitoring on a report. Requires additional permissions.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Report Action: Pause Continuous Monitoring
  result = api_instance.report_action_pause_continuous_monitoring(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->report_action_pause_continuous_monitoring: #{e}"
end
```

#### Using the report_action_pause_continuous_monitoring_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> report_action_pause_continuous_monitoring_with_http_info(report_id, opts)

```ruby
begin
  # Report Action: Pause Continuous Monitoring
  data, status_code, headers = api_instance.report_action_pause_continuous_monitoring_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->report_action_pause_continuous_monitoring_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_action_re_run_report

> <RetrieveAReport200Response> report_action_re_run_report(report_id, opts)

Report Action: Re-run Report

Re-runs a continuously monitored report immediately, outside of its existing recurrence schedule.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Report Action: Re-run Report
  result = api_instance.report_action_re_run_report(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->report_action_re_run_report: #{e}"
end
```

#### Using the report_action_re_run_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> report_action_re_run_report_with_http_info(report_id, opts)

```ruby
begin
  # Report Action: Re-run Report
  data, status_code, headers = api_instance.report_action_re_run_report_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->report_action_re_run_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## report_action_resume_continuous_monitoring

> <RetrieveAReport200Response> report_action_resume_continuous_monitoring(report_id, opts)

Report Action: Resume Continuous Monitoring

Resumes continuous monitoring on paused report. Requires additional permissions.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Report Action: Resume Continuous Monitoring
  result = api_instance.report_action_resume_continuous_monitoring(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->report_action_resume_continuous_monitoring: #{e}"
end
```

#### Using the report_action_resume_continuous_monitoring_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> report_action_resume_continuous_monitoring_with_http_info(report_id, opts)

```ruby
begin
  # Report Action: Resume Continuous Monitoring
  data, status_code, headers = api_instance.report_action_resume_continuous_monitoring_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->report_action_resume_continuous_monitoring_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reports_add_tag

> <RetrieveAReport200Response> reports_add_tag(report_id, opts)

Add tag to a Report

Adds a new tag to the Report

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  reports_add_tag_request: PersonaAPIClient::ReportsAddTagRequest.new # ReportsAddTagRequest | 
}

begin
  # Add tag to a Report
  result = api_instance.reports_add_tag(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->reports_add_tag: #{e}"
end
```

#### Using the reports_add_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> reports_add_tag_with_http_info(report_id, opts)

```ruby
begin
  # Add tag to a Report
  data, status_code, headers = api_instance.reports_add_tag_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->reports_add_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **reports_add_tag_request** | [**ReportsAddTagRequest**](ReportsAddTagRequest.md) |  | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reports_remove_tag

> <RetrieveAReport200Response> reports_remove_tag(report_id, opts)

Remove tag from a Report

Removes an existing tag from a Report.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  reports_remove_tag_request: PersonaAPIClient::ReportsRemoveTagRequest.new # ReportsRemoveTagRequest | 
}

begin
  # Remove tag from a Report
  result = api_instance.reports_remove_tag(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->reports_remove_tag: #{e}"
end
```

#### Using the reports_remove_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> reports_remove_tag_with_http_info(report_id, opts)

```ruby
begin
  # Remove tag from a Report
  data, status_code, headers = api_instance.reports_remove_tag_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->reports_remove_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **reports_remove_tag_request** | [**ReportsRemoveTagRequest**](ReportsRemoveTagRequest.md) |  | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reports_set_all_tags

> <RetrieveAReport200Response> reports_set_all_tags(report_id, opts)

Set tags on a Report

Sets all tags on a Report. Any tags that are not provided in the request will be removed.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}}, # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
  reports_set_all_tags_request: PersonaAPIClient::ReportsSetAllTagsRequest.new # ReportsSetAllTagsRequest | 
}

begin
  # Set tags on a Report
  result = api_instance.reports_set_all_tags(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->reports_set_all_tags: #{e}"
end
```

#### Using the reports_set_all_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> reports_set_all_tags_with_http_info(report_id, opts)

```ruby
begin
  # Set tags on a Report
  data, status_code, headers = api_instance.reports_set_all_tags_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->reports_set_all_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |
| **reports_set_all_tags_request** | [**ReportsSetAllTagsRequest**](ReportsSetAllTagsRequest.md) |  | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## retrieve_a_report

> <RetrieveAReport200Response> retrieve_a_report(report_id, opts)

Retrieve a Report

Retrieves the details of an existing Report.

### Examples

```ruby
require 'time'
require 'persona_api_client'
# setup authorization
PersonaAPIClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = PersonaAPIClient::ReportsApi.new
report_id = 'report_id_example' # String | 
opts = {
  key_inflection: 'camel', # String | Determines casing for the API response.
  idempotency_key: 'idempotency_key_example', # String | Ensures the request is idempotent.
  persona_version: PersonaAPIClient::ApiVersion::N2025_12_08, # ApiVersion | 
  include: 'include_example', # String | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the `included` key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details.
  fields: { key: { key: 'inner_example'}} # Hash<String, String> | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details.
}

begin
  # Retrieve a Report
  result = api_instance.retrieve_a_report(report_id, opts)
  p result
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->retrieve_a_report: #{e}"
end
```

#### Using the retrieve_a_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveAReport200Response>, Integer, Hash)> retrieve_a_report_with_http_info(report_id, opts)

```ruby
begin
  # Retrieve a Report
  data, status_code, headers = api_instance.retrieve_a_report_with_http_info(report_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveAReport200Response>
rescue PersonaAPIClient::ApiError => e
  puts "Error when calling ReportsApi->retrieve_a_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_id** | **String** |  |  |
| **key_inflection** | **String** | Determines casing for the API response. | [optional] |
| **idempotency_key** | **String** | Ensures the request is idempotent. | [optional] |
| **persona_version** | [**ApiVersion**](.md) |  | [optional] |
| **include** | **String** | A comma-separated list of relationship paths. This can be used to customize which related resources will be fully serialized in the &#x60;included&#x60; key in the response. See [Serialization](https://docs.withpersona.com/serialization#inclusion-of-related-resources) for more details. | [optional] |
| **fields** | [**Hash&lt;String, String&gt;**](String.md) | Comma-separated list(s) of attributes to include in the response. This can be used to customize which attributes will be serialized in the response. See [Serialization](https://docs.withpersona.com/serialization#sparse-fieldsets) for more details. | [optional] |

### Return type

[**RetrieveAReport200Response**](RetrieveAReport200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

