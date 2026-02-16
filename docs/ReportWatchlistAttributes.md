# PersonaAPIClient::ReportWatchlistAttributes

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
| **birthdate** | **String** | The input DOB in YYYY-MM-DD format | [optional] |
| **country_code** | **String** | The input search country in alpha2 format | [optional] |
| **matched_lists** | [**Array&lt;ReportWatchlistAttributesAllOfMatchedListsInner&gt;**](ReportWatchlistAttributesAllOfMatchedListsInner.md) | Lists that matched from the search input | [optional] |
| **ignore_list** | [**Array&lt;ReportWatchlistAttributesAllOfIgnoreListInner&gt;**](ReportWatchlistAttributesAllOfIgnoreListInner.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportWatchlistAttributes.new(
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
  birthdate: 1991-10-07,
  country_code: US,
  matched_lists: null,
  ignore_list: null
)
```

