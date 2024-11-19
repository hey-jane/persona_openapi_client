# OpenapiClient::ReportWatchlistAttributesAllOfIgnoreListInnerMatchEntitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **alias_type** | **String** |  | [optional] |
| **birthdates** | [**Array&lt;ReportWatchlistAttributesAllOfIgnoreListInnerMatchEntitiesInnerBirthdatesInner&gt;**](ReportWatchlistAttributesAllOfIgnoreListInnerMatchEntitiesInnerBirthdatesInner.md) |  | [optional] |
| **group_id** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReportWatchlistAttributesAllOfIgnoreListInnerMatchEntitiesInner.new(
  name: Won Ho Ri,
  alias_type: primary_name,
  birthdates: null,
  group_id: EU:110286
)
```
