# PersonaAPIClient::ReportsIncludedObjectsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportsIncludedObjectsInner.openapi_one_of
# =>
# [
#   :'Account',
#   :'Inquiry',
#   :'Modelcase',
#   :'ReportTemplateAddressLookup',
#   :'ReportTemplateAdverseMedia',
#   :'ReportTemplateBusinessAdverseMedia',
#   :'ReportTemplateBusinessLookup',
#   :'ReportTemplateBusinessWatchlist',
#   :'ReportTemplateCryptoAddressWatchlist',
#   :'ReportTemplateEmailAddress',
#   :'ReportTemplatePhoneRisk',
#   :'ReportTemplatePoliticallyExposedPerson',
#   :'ReportTemplateProfile',
#   :'ReportTemplateSentilinkScores',
#   :'ReportTemplateSocialMedia',
#   :'ReportTemplateSynthetic',
#   :'ReportTemplateWatchlist',
#   :'Transaction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportsIncludedObjectsInner.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportsIncludedObjectsInner.openapi_discriminator_mapping
# =>
# {
#   :'account' => :'Account',
#   :'case' => :'Modelcase',
#   :'inquiry' => :'Inquiry',
#   :'report-template/address-lookup' => :'ReportTemplateAddressLookup',
#   :'report-template/adverse-media' => :'ReportTemplateAdverseMedia',
#   :'report-template/business-adverse-media' => :'ReportTemplateBusinessAdverseMedia',
#   :'report-template/business-lookup' => :'ReportTemplateBusinessLookup',
#   :'report-template/business-watchlist' => :'ReportTemplateBusinessWatchlist',
#   :'report-template/crypto-address-watchlist' => :'ReportTemplateCryptoAddressWatchlist',
#   :'report-template/email-address' => :'ReportTemplateEmailAddress',
#   :'report-template/integration/sentilink-scores' => :'ReportTemplateSentilinkScores',
#   :'report-template/phone-risk' => :'ReportTemplatePhoneRisk',
#   :'report-template/politically-exposed-person' => :'ReportTemplatePoliticallyExposedPerson',
#   :'report-template/profile' => :'ReportTemplateProfile',
#   :'report-template/social-media' => :'ReportTemplateSocialMedia',
#   :'report-template/synthetic' => :'ReportTemplateSynthetic',
#   :'report-template/watchlist' => :'ReportTemplateWatchlist',
#   :'transaction' => :'Transaction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportsIncludedObjectsInner.build(data)
# => #<Account:0x00007fdd4aab02a0>

PersonaAPIClient::ReportsIncludedObjectsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Account`
- `Inquiry`
- `Modelcase`
- `ReportTemplateAddressLookup`
- `ReportTemplateAdverseMedia`
- `ReportTemplateBusinessAdverseMedia`
- `ReportTemplateBusinessLookup`
- `ReportTemplateBusinessWatchlist`
- `ReportTemplateCryptoAddressWatchlist`
- `ReportTemplateEmailAddress`
- `ReportTemplatePhoneRisk`
- `ReportTemplatePoliticallyExposedPerson`
- `ReportTemplateProfile`
- `ReportTemplateSentilinkScores`
- `ReportTemplateSocialMedia`
- `ReportTemplateSynthetic`
- `ReportTemplateWatchlist`
- `Transaction`
- `nil` (if no type matches)

