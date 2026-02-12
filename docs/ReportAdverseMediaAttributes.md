# PersonaAPIClient::ReportAdverseMediaAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status of the report  Possible values: - pending - ready - errored  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **created_at** | **String** | The time the report was created in ISO 8601 format | [optional] |
| **completed_at** | **String** | The time the report completed processing in ISO 8601 format | [optional] |
| **redacted_at** | **String** | The time the report was redacted in ISO 8601 format | [optional] |
| **report_template_version_name** | **String** | The name of the report template version used for this report | [optional] |
| **has_match** | **Boolean** | Whether or not the report matched | [optional] |
| **is_continuous** | **Boolean** | Whether or not this report has been run more than once | [optional] |
| **is_recurring** | **Boolean** | Whether or not this report is scheduled to run in the future | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags on the report | [optional] |
| **name_first** | **String** | The input first name of the search individual | [optional] |
| **name_middle** | **String** | The input middle name of the search individual | [optional] |
| **name_last** | **String** | The input last name of the search individual | [optional] |
| **term** | **String** | The input combined term used for searching (first + middle + last name) | [optional] |
| **birthdate_year** | **Integer** |  | [optional] |
| **birthdate** | **String** | The input DOB in YYYY-MM-DD format | [optional] |
| **country_code** | **String** | The input search country in alpha2 format | [optional] |
| **related_sources** | [**Array&lt;ReportAdverseMediaAttributesAllOfRelatedSourcesInner&gt;**](ReportAdverseMediaAttributesAllOfRelatedSourcesInner.md) | The sources that matched for the search | [optional] |
| **ignore_list_media** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **ignore_list_entity** | **Array&lt;Hash&lt;String, Object&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportAdverseMediaAttributes.new(
  status: null,
  created_at: 2020-04-12T05:08:51.000Z,
  completed_at: 2020-04-13T00:23:57.000Z,
  redacted_at: null,
  report_template_version_name: v1,
  has_match: null,
  is_continuous: null,
  is_recurring: null,
  tags: null,
  name_first: Joe,
  name_middle: N,
  name_last: Doe,
  term: Joe N Doe,
  birthdate_year: 1992,
  birthdate: 1991-10-07,
  country_code: US,
  related_sources: null,
  ignore_list_media: null,
  ignore_list_entity: null
)
```

