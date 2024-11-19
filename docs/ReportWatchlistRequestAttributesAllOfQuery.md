# OpenapiClient::ReportWatchlistRequestAttributesAllOfQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name_first** | **String** | The first name of the individual to search. | [optional] |
| **name_middle** | **String** | The middle name of the individual to search. | [optional] |
| **name_last** | **String** | The last name of the individual to search. | [optional] |
| **term** | **String** | Custom search term instead of separate name parts of the individual (i.e. first + middle + last name). | [optional] |
| **birthdate** | **String** | The birthdate of the individual, formatted as YYYY-MM-DD (ISO 8601). | [optional] |
| **address_country_code** | **String** | ISO 3166-1 alpha-2 country code. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportWatchlistRequestAttributesAllOfQuery.new(
  name_first: Joe,
  name_middle: N,
  name_last: Doe,
  term: Joe N Doe,
  birthdate: 1991-10-07,
  address_country_code: US
)
```
