# PersonaAPIClient::AccountsListAllRelationsFilterParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Filter relations by relation key. |  |
| **created_at_start** | **String** | Filter relations by creation date. | [optional] |
| **created_at_end** | **String** | Filter relations by creation date. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::AccountsListAllRelationsFilterParameter.new(
  key: null,
  created_at_start: null,
  created_at_end: null
)
```

