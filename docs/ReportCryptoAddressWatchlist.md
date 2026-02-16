# PersonaAPIClient::ReportCryptoAddressWatchlist

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | The ID of the report | [optional] |
| **attributes** | [**ReportCryptoAddressWatchlistAttributes**](ReportCryptoAddressWatchlistAttributes.md) |  | [optional] |
| **relationships** | [**ReportSharedRelationships**](ReportSharedRelationships.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportCryptoAddressWatchlist.new(
  type: null,
  id: rep_7WNzPaNcroBKLarNHBjYDLAp,
  attributes: null,
  relationships: null
)
```

