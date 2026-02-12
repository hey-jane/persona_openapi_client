# PersonaAPIClient::AccountsListAllRelations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AccountsListAllRelations200ResponseDataInner&gt;**](AccountsListAllRelations200ResponseDataInner.md) | List of relations for the Account. The type of the returned objects is determined by the key query parameter. |  |
| **links** | [**ListAllAccounts200ResponseLinks**](ListAllAccounts200ResponseLinks.md) |  |  |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::AccountsListAllRelations200Response.new(
  data: null,
  links: null
)
```

