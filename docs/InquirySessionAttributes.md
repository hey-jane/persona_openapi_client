# PersonaAPIClient::InquirySessionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Possible values: - new - active - expired  Do not assume this is a static enumeration; Persona may add new values in the future without a versioned update. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **expired_at** | **Time** |  | [optional] |
| **ip_address** | **String** |  | [optional] |
| **user_agent** | **String** |  | [optional] |
| **os_name** | **String** |  | [optional] |
| **os_full_version** | **String** |  | [optional] |
| **device_type** | **String** |  | [optional] |
| **device_name** | **String** |  | [optional] |
| **browser_name** | **String** |  | [optional] |
| **browser_full_version** | **String** |  | [optional] |
| **mobile_sdk_name** | **String** |  | [optional] |
| **mobile_sdk_full_version** | **String** |  | [optional] |
| **device_handoff_method** | **String** |  | [optional] |
| **is_proxy** | **Boolean** |  | [optional] |
| **is_tor** | **Boolean** |  | [optional] |
| **is_datacenter** | **Boolean** |  | [optional] |
| **is_vpn** | **Boolean** |  | [optional] |
| **threat_level** | **String** |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **country_name** | **String** |  | [optional] |
| **region_code** | **String** |  | [optional] |
| **region_name** | **String** |  | [optional] |
| **latitude** | **Float** |  | [optional] |
| **longitude** | **Float** |  | [optional] |
| **gps_latitude** | **Float** |  | [optional] |
| **gps_longitude** | **Float** |  | [optional] |
| **gps_precision** | **String** |  | [optional] |
| **ip_connection_type** | **String** |  | [optional] |
| **ip_isp** | **String** |  | [optional] |
| **network_organization** | **String** |  | [optional] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::InquirySessionAttributes.new(
  status: null,
  created_at: null,
  started_at: null,
  expired_at: null,
  ip_address: null,
  user_agent: null,
  os_name: null,
  os_full_version: null,
  device_type: null,
  device_name: null,
  browser_name: null,
  browser_full_version: null,
  mobile_sdk_name: null,
  mobile_sdk_full_version: null,
  device_handoff_method: null,
  is_proxy: null,
  is_tor: null,
  is_datacenter: null,
  is_vpn: null,
  threat_level: null,
  country_code: null,
  country_name: null,
  region_code: null,
  region_name: null,
  latitude: null,
  longitude: null,
  gps_latitude: null,
  gps_longitude: null,
  gps_precision: null,
  ip_connection_type: null,
  ip_isp: null,
  network_organization: null
)
```

