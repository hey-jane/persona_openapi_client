# PersonaAPIClient::ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **akas** | **Array&lt;String&gt;** |  | [optional] |
| **birthdates** | **Array&lt;String&gt;** |  | [optional] |
| **match_types** | **Array&lt;String&gt;** |  | [optional] |
| **media** | [**Array&lt;ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInnerMediaInner&gt;**](ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInnerMediaInner.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **sources** | [**Array&lt;ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInnerSourcesInner&gt;**](ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInnerSourcesInner.md) |  | [optional] |
| **id** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessAdverseMediaAttributesAllOfRelatedSourcesInner.new(
  akas: null,
  birthdates: null,
  match_types: null,
  media: null,
  name: Joe Doe,
  sources: null,
  id: FV933QHOUDG73V8
)
```

