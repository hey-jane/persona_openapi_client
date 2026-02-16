# PersonaAPIClient::ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInnerMediaInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** |  | [optional] |
| **snippet** | **String** | Snippet from matched article | [optional] |
| **url** | **String** | URL of matched article | [optional] |
| **title** | **String** | Title of matched article | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInnerMediaInner.new(
  date: 2022-11-12,
  snippet: Joe Doe was ordered to jail on Friday after a judge revoked his bail for alleged witness tampering.,
  url: https://www.example.com/,
  title: Joe Doe ordered to jail
)
```

