# OpenapiClient::ListAllTransactionsFilterParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference_id** | **String** | Filter transactions by reference ID. | [optional] |
| **transaction_type_id** | **String** | Filter transactions by Transaction Type ID. | [optional] |
| **identifier** | [**ListAllTransactionsFilterParameterIdentifier**](ListAllTransactionsFilterParameterIdentifier.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListAllTransactionsFilterParameter.new(
  reference_id: null,
  transaction_type_id: null,
  identifier: null
)
```
