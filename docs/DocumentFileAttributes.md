# PersonaAPIClient::DocumentFileAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **capture_method** | **String** | Possible values: - auto - manual - upload - api - live  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **originals** | **Array&lt;File&gt;** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::DocumentFileAttributes.new(
  name: null,
  capture_method: null,
  originals: null
)
```

