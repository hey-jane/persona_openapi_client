# PersonaAPIClient::ReportBusinessWatchlistAttributes

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
| **matched_lists** | **Array&lt;String&gt;** | A list of slugs identifying the lists on which matches were found. | [optional] |
| **sanction_list** | [**Array&lt;ReportBusinessWatchlistAttributesAllOfSanctionListInner&gt;**](ReportBusinessWatchlistAttributesAllOfSanctionListInner.md) | Detailed information about matches found on sanction lists. | [optional] |
| **fitness_probity_list** | [**Array&lt;ReportBusinessWatchlistAttributesAllOfFitnessProbityListInner&gt;**](ReportBusinessWatchlistAttributesAllOfFitnessProbityListInner.md) | Detailed information about matches found on fitness and probity lists. | [optional] |
| **warning_list** | [**Array&lt;ReportBusinessWatchlistAttributesAllOfWarningListInner&gt;**](ReportBusinessWatchlistAttributesAllOfWarningListInner.md) | Detailed information about matches found on warning lists. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportBusinessWatchlistAttributes.new(
  status: null,
  created_at: 2020-04-12T05:08:51.000Z,
  completed_at: 2020-04-13T00:23:57.000Z,
  redacted_at: null,
  report_template_version_name: v1,
  has_match: null,
  is_continuous: null,
  is_recurring: null,
  tags: null,
  matched_lists: null,
  sanction_list: null,
  fitness_probity_list: null,
  warning_list: null
)
```

