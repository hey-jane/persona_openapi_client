# PersonaAPIClient::ReportSocialMediaAttributes

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
| **name_first** | **String** |  | [optional] |
| **name_last** | **String** |  | [optional] |
| **birthdate** | **String** | Date of birth in YYYY-MM-DD format | [optional] |
| **phone_number** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **address_city** | **String** |  | [optional] |
| **address_subdivision** | **String** | Sub-national subdivision such as a US state or a Canadian province | [optional] |
| **linkedin_url** | **String** |  | [optional] |
| **linkedin_username** | **String** |  | [optional] |
| **linkedin_id** | **String** |  | [optional] |
| **facebook_url** | **String** |  | [optional] |
| **facebook_username** | **String** |  | [optional] |
| **facebook_id** | **String** |  | [optional] |
| **twitter_url** | **String** |  | [optional] |
| **twitter_username** | **String** |  | [optional] |
| **github_url** | **String** |  | [optional] |
| **github_username** | **String** |  | [optional] |
| **instagram_url** | **String** |  | [optional] |
| **instagram_username** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::ReportSocialMediaAttributes.new(
  status: null,
  created_at: 2020-04-12T05:08:51.000Z,
  completed_at: 2020-04-13T00:23:57.000Z,
  redacted_at: null,
  report_template_version_name: v1,
  has_match: null,
  is_continuous: null,
  is_recurring: null,
  tags: null,
  name_first: Norman,
  name_last: Mannor,
  birthdate: 1991-10-07,
  phone_number: +14169671111,
  email_address: address@domain.com,
  address_city: Funkyville,
  address_subdivision: Wisconsin,
  linkedin_url: linkdin.com/in/thisisausername,
  linkedin_username: thisisausername,
  linkedin_id: 123456789,
  facebook_url: facebook.com/user.name.7,
  facebook_username: user.name.7,
  facebook_id: 748945123159485,
  twitter_url: twitter.com/elonmusk,
  twitter_username: elonmusk,
  github_url: github.com/username,
  github_username: username,
  instagram_url: instagram.com/username,
  instagram_username: username
)
```

