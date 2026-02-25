# PersonaAPIClient::List

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::List.openapi_one_of
# =>
# [
#   :'ListsBrowserFingerprints',
#   :'ListsCountries',
#   :'ListsEmailAddresses',
#   :'ListsGeolocations',
#   :'ListsGovernmentIdNumbers',
#   :'ListsIpAddresses',
#   :'ListsNames',
#   :'ListsPhoneNumbers'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::List.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::List.openapi_discriminator_mapping
# =>
# {
#   :'list/browser-fingerprint' => :'ListsBrowserFingerprints',
#   :'list/country' => :'ListsCountries',
#   :'list/email-address' => :'ListsEmailAddresses',
#   :'list/geolocation' => :'ListsGeolocations',
#   :'list/government-id-number' => :'ListsGovernmentIdNumbers',
#   :'list/ip-address' => :'ListsIpAddresses',
#   :'list/name' => :'ListsNames',
#   :'list/phone-number' => :'ListsPhoneNumbers'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::List.build(data)
# => #<ListsBrowserFingerprints:0x00007fdd4aab02a0>

PersonaAPIClient::List.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListsBrowserFingerprints`
- `ListsCountries`
- `ListsEmailAddresses`
- `ListsGeolocations`
- `ListsGovernmentIdNumbers`
- `ListsIpAddresses`
- `ListsNames`
- `ListsPhoneNumbers`
- `nil` (if no type matches)

