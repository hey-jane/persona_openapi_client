# PersonaAPIClient::CaseAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **resolution** | **String** |  | [optional] |
| **created_at** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **assigned_at** | **String** |  | [optional] |
| **resolved_at** | **String** |  | [optional] |
| **redacted_at** | **String** |  | [optional] |
| **sla_expires_at** | **String** |  | [optional] |
| **creator_id** | **String** |  | [optional] |
| **creator_type** | **String** | Possible values: - user - workflow-run  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **assignee_id** | **String** |  | [optional] |
| **assigner_id** | **String** |  | [optional] |
| **assigner_type** | **String** | Possible values: - case-assignment-policy - user - workflow-run  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **resolver_id** | **String** |  | [optional] |
| **resolver_type** | **String** | Possible values: - user - workflow-run  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **updater_id** | **String** |  | [optional] |
| **updater_type** | **String** | Possible values: - case-assignment-policy - user - workflow-run  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **tags** | **Array&lt;Object&gt;** |  | [optional] |
| **fields** | **Hash&lt;String, Object&gt;** | JSON key-value pairs of field name to field value. Exact schema depends on the configuration of the Case template for this Case. Keys in &#x60;fields&#x60; are **not** key inflected. | [optional] |
| **attachments** | [**Array&lt;CaseAttributesAttachmentsInner&gt;**](CaseAttributesAttachmentsInner.md) |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::CaseAttributes.new(
  status: null,
  name: null,
  resolution: null,
  created_at: null,
  updated_at: null,
  assigned_at: null,
  resolved_at: null,
  redacted_at: null,
  sla_expires_at: null,
  creator_id: null,
  creator_type: null,
  assignee_id: null,
  assigner_id: null,
  assigner_type: null,
  resolver_id: null,
  resolver_type: null,
  updater_id: null,
  updater_type: null,
  tags: null,
  fields: null,
  attachments: null
)
```

