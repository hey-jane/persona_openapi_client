# PersonaAPIClient::ReportBusinessLookupRequestAttributesAllOfQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** | The name of the business to search. |  |
| **phone_number** | **String** | The phone number of the business to search. | [optional] |
| **website** | **String** | The website of the business to search. | [optional] |
| **ein** | **String** | The Employer Identification Number (EIN) of the business to search. | [optional] |
| **address_street_1** | **String** | Address line 1 (e.g., street, PO Box, or company name). |  |
| **address_street_2** | **String** | Address line 2 (e.g., apartment, suite, unit, or building). | [optional] |
| **address_city** | **String** | City |  |
| **address_subdivision** | **String** | Subnational division of a country, such as a state or province. |  |
| **address_postal_code** | **String** | ZIP or postal code |  |
| **address_country_code** | **String** | ISO 3166-1 alpha-2 country code. | [optional] |
| **associated_people** | [**Array&lt;ReportBusinessLookupRequestAttributesAllOfQueryAssociatedPeopleInner&gt;**](ReportBusinessLookupRequestAttributesAllOfQueryAssociatedPeopleInner.md) | Officers or agents associated with the business. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessLookupRequestAttributesAllOfQuery.new(
  business_name: Coffee Shop,
  phone_number: null,
  website: null,
  ein: null,
  address_street_1: 123 Funky St,
  address_street_2: null,
  address_city: Funkyville,
  address_subdivision: CA,
  address_postal_code: 12345,
  address_country_code: US,
  associated_people: null
)
```

