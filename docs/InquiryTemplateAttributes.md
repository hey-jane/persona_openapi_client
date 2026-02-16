# PersonaAPIClient::InquiryTemplateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Inquiry Template | [optional] |
| **status** | **String** | Possible values: - active - inactive  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **embedded_flow_domain_allowlist** | **Array&lt;String&gt;** | List of domains allowed for embedded flows | [optional] |
| **hosted_flow_subdomains** | **Array&lt;String&gt;** | The subdomain that your hosted flow can be hosted on (e.g. \&quot;mycompany.withpersona.com\&quot;) | [optional] |
| **hosted_flow_redirect_uri_schemes** | **Array&lt;String&gt;** | An allowlist that specifies the URI schemes for redirect after completion of a Hosted Flow. This can be used to implement deep linking for mobile integrations. If this list is empty, all URLs with the URI scheme http or https are allowed. | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::InquiryTemplateAttributes.new(
  name: null,
  status: null,
  embedded_flow_domain_allowlist: null,
  hosted_flow_subdomains: null,
  hosted_flow_redirect_uri_schemes: null
)
```

