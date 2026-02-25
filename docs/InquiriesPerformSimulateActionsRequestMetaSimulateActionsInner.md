# PersonaAPIClient::InquiriesPerformSimulateActionsRequestMetaSimulateActionsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquiriesPerformSimulateActionsRequestMetaSimulateActionsInner.openapi_one_of
# =>
# [
#   :'CreateVerificationAction',
#   :'InquiryStatusAction'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::InquiriesPerformSimulateActionsRequestMetaSimulateActionsInner.build(data)
# => #<CreateVerificationAction:0x00007fdd4aab02a0>

PersonaAPIClient::InquiriesPerformSimulateActionsRequestMetaSimulateActionsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreateVerificationAction`
- `InquiryStatusAction`
- `nil` (if no type matches)

