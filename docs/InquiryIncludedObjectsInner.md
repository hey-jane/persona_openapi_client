# PersonaAPIClient::InquiryIncludedObjectsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquiryIncludedObjectsInner.openapi_one_of
# =>
# [
#   :'Account',
#   :'DocumentGeneric',
#   :'DocumentGovernmentId',
#   :'DocumentGovernmentIdNfc',
#   :'DocumentMobileDriversLicense',
#   :'InquirySession',
#   :'InquiryTemplate',
#   :'InquiryTemplateVersion',
#   :'ReportAddressLookup',
#   :'ReportAdverseMedia',
#   :'ReportBusinessAdverseMedia',
#   :'ReportBusinessAssociatedPersons',
#   :'ReportBusinessLookup',
#   :'ReportBusinessRegistrationsLookup',
#   :'ReportBusinessWatchlist',
#   :'ReportCryptoAddressWatchlist',
#   :'ReportEmailAddress',
#   :'ReportPhoneRisk',
#   :'ReportPoliticallyExposedPerson',
#   :'ReportProfile',
#   :'ReportProfileNonAuthoritative',
#   :'ReportSentilinkScores',
#   :'ReportSocialMedia',
#   :'ReportSynthetic',
#   :'ReportWatchlist',
#   :'Selfie',
#   :'Template',
#   :'Transaction',
#   :'User',
#   :'VerificationAamva',
#   :'VerificationDatabase',
#   :'VerificationDatabaseEcbsv',
#   :'VerificationDatabasePhoneCarrier',
#   :'VerificationDatabaseSerpro',
#   :'VerificationDatabaseStandard',
#   :'VerificationDatabaseTin',
#   :'VerificationDocument',
#   :'VerificationEmailAddress',
#   :'VerificationGovernmentId',
#   :'VerificationGovernmentIdNfc',
#   :'VerificationPhoneNumber',
#   :'VerificationSelfie',
#   :'Workflow',
#   :'WorkflowRun'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquiryIncludedObjectsInner.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquiryIncludedObjectsInner.openapi_discriminator_mapping
# =>
# {
#   :'account' => :'Account',
#   :'document/generic' => :'DocumentGeneric',
#   :'document/government-id' => :'DocumentGovernmentId',
#   :'document/government-id-nfc' => :'DocumentGovernmentIdNfc',
#   :'document/mobile-drivers-license' => :'DocumentMobileDriversLicense',
#   :'inquiry-session' => :'InquirySession',
#   :'inquiry-template' => :'InquiryTemplate',
#   :'inquiry-template-version' => :'InquiryTemplateVersion',
#   :'report/address-lookup' => :'ReportAddressLookup',
#   :'report/adverse-media' => :'ReportAdverseMedia',
#   :'report/business-adverse-media' => :'ReportBusinessAdverseMedia',
#   :'report/business-associated-persons' => :'ReportBusinessAssociatedPersons',
#   :'report/business-lookup' => :'ReportBusinessLookup',
#   :'report/business-registrations-lookup' => :'ReportBusinessRegistrationsLookup',
#   :'report/business-watchlist' => :'ReportBusinessWatchlist',
#   :'report/crypto-address-watchlist' => :'ReportCryptoAddressWatchlist',
#   :'report/email-address' => :'ReportEmailAddress',
#   :'report/integration/sentilink-scores' => :'ReportSentilinkScores',
#   :'report/phone-number' => :'ReportPhoneRisk',
#   :'report/politically-exposed-person' => :'ReportPoliticallyExposedPerson',
#   :'report/profile' => :'ReportProfile',
#   :'report/profile-non-authoritative' => :'ReportProfileNonAuthoritative',
#   :'report/social-media' => :'ReportSocialMedia',
#   :'report/synthetic' => :'ReportSynthetic',
#   :'report/watchlist' => :'ReportWatchlist',
#   :'selfie/center-only' => :'Selfie',
#   :'selfie/configurable-poses' => :'Selfie',
#   :'selfie/profile-and-center' => :'Selfie',
#   :'template' => :'Template',
#   :'transaction' => :'Transaction',
#   :'user' => :'User',
#   :'verification/aamva' => :'VerificationAamva',
#   :'verification/database' => :'VerificationDatabase',
#   :'verification/database-ecbsv' => :'VerificationDatabaseEcbsv',
#   :'verification/database-phone-carrier' => :'VerificationDatabasePhoneCarrier',
#   :'verification/database-serpro' => :'VerificationDatabaseSerpro',
#   :'verification/database-standard' => :'VerificationDatabaseStandard',
#   :'verification/database-tin' => :'VerificationDatabaseTin',
#   :'verification/document' => :'VerificationDocument',
#   :'verification/email-address' => :'VerificationEmailAddress',
#   :'verification/government-id' => :'VerificationGovernmentId',
#   :'verification/government-id-nfc' => :'VerificationGovernmentIdNfc',
#   :'verification/phone-number' => :'VerificationPhoneNumber',
#   :'verification/selfie' => :'VerificationSelfie',
#   :'workflow' => :'Workflow',
#   :'workflow-run' => :'WorkflowRun'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquiryIncludedObjectsInner.build(data)
# => #<Account:0x00007fdd4aab02a0>

PersonaAPIClient::InquiryIncludedObjectsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Account`
- `DocumentGeneric`
- `DocumentGovernmentId`
- `DocumentGovernmentIdNfc`
- `DocumentMobileDriversLicense`
- `InquirySession`
- `InquiryTemplate`
- `InquiryTemplateVersion`
- `ReportAddressLookup`
- `ReportAdverseMedia`
- `ReportBusinessAdverseMedia`
- `ReportBusinessAssociatedPersons`
- `ReportBusinessLookup`
- `ReportBusinessRegistrationsLookup`
- `ReportBusinessWatchlist`
- `ReportCryptoAddressWatchlist`
- `ReportEmailAddress`
- `ReportPhoneRisk`
- `ReportPoliticallyExposedPerson`
- `ReportProfile`
- `ReportProfileNonAuthoritative`
- `ReportSentilinkScores`
- `ReportSocialMedia`
- `ReportSynthetic`
- `ReportWatchlist`
- `Selfie`
- `Template`
- `Transaction`
- `User`
- `VerificationAamva`
- `VerificationDatabase`
- `VerificationDatabaseEcbsv`
- `VerificationDatabasePhoneCarrier`
- `VerificationDatabaseSerpro`
- `VerificationDatabaseStandard`
- `VerificationDatabaseTin`
- `VerificationDocument`
- `VerificationEmailAddress`
- `VerificationGovernmentId`
- `VerificationGovernmentIdNfc`
- `VerificationPhoneNumber`
- `VerificationSelfie`
- `Workflow`
- `WorkflowRun`
- `nil` (if no type matches)

