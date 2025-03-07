# PersonaAPIClient::ListItemCountryAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Possible values: - pending - active - archived  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **archived_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **redacted_at** | **Time** |  | [optional] |
| **match_count** | **Integer** |  | [optional][default to 0] |
| **country_code** | **String** | Alpha-2 country code | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ListItemCountryAttributes.new(
  status: null,
  archived_at: null,
  updated_at: null,
  created_at: null,
  redacted_at: null,
  match_count: null,
  country_code: null
)
```

