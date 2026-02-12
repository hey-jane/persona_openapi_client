# PersonaAPIClient::ReportHistoryInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportHistoryInner.openapi_one_of
# =>
# [
#   :'ReportHistoryDismiss',
#   :'ReportHistoryPause',
#   :'ReportHistoryResume',
#   :'ReportHistoryReview',
#   :'ReportHistoryRun'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportHistoryInner.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportHistoryInner.openapi_discriminator_mapping
# =>
# {
#   :'dismiss' => :'ReportHistoryDismiss',
#   :'pause' => :'ReportHistoryPause',
#   :'resume' => :'ReportHistoryResume',
#   :'review' => :'ReportHistoryReview',
#   :'run' => :'ReportHistoryRun'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'persona_api_client'

PersonaAPIClient::ReportHistoryInner.build(data)
# => #<ReportHistoryDismiss:0x00007fdd4aab02a0>

PersonaAPIClient::ReportHistoryInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ReportHistoryDismiss`
- `ReportHistoryPause`
- `ReportHistoryResume`
- `ReportHistoryReview`
- `ReportHistoryRun`
- `nil` (if no type matches)

