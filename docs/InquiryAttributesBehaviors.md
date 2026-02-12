# PersonaAPIClient::InquiryAttributesBehaviors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_version_less_than_minimum_count** | **Integer** | Number of requests from restricted API versions | [optional][default to 0] |
| **autofill_cancels** | **Integer** |  | [optional][default to 0] |
| **autofill_starts** | **Integer** | Number of times the user autofilled a form field. | [optional][default to 0] |
| **behavior_threat_level** | **String** | A predictive, proprietary score you can use to assess fraud risk. This score is created by Persona and based on a combination of behavioral signals. | [optional] |
| **bot_score** | **Integer** | A score between 0 and 100 that indicates the likelihood that the user is a bot. | [optional][default to 0] |
| **completion_time** | **Float** | Time duration of user interaction. | [optional][default to 0] |
| **devtools_open** | **Boolean** |  | [optional][default to true] |
| **debugger_attached** | **Boolean** | A debugger was detected within a mobile integration flow. | [optional][default to false] |
| **distraction_events** | **Integer** | Number of times the user switched focus from the flow for browser-based integrations. | [optional][default to 0] |
| **hesitation_baseline** | **Integer** |  | [optional][default to 0] |
| **hesitation_count** | **Integer** | Number of periods where the user made no inputs. | [optional][default to 0] |
| **hesitation_percentage** | **Float** | Percentage of time in the flow where the user made no inputs. | [optional][default to 0] |
| **hesitation_time** | **Integer** | Total time where the user made no inputs. | [optional][default to 0] |
| **mobile_sdk_version_less_than_minimum_count** | **Integer** | Number of requests from restricted mobile SDK versions | [optional][default to 0] |
| **request_spoof_attempts** | **Integer** | Number of requests that were likely spoofed. | [optional][default to 0] |
| **shortcut_copies** | **Integer** | Number of times the user used a keyboard shortcut to copy information. | [optional][default to 0] |
| **shortcut_pastes** | **Integer** | Number of times the user used a keyboard shortcut to paste information. | [optional][default to 0] |
| **user_agent_spoof_attempts** | **Integer** | Number of user agent headers that were likely spoofed on seen devices | [optional][default to 0] |

## Example

```ruby
require 'persona_api_client'

instance = PersonaAPIClient::InquiryAttributesBehaviors.new(
  api_version_less_than_minimum_count: null,
  autofill_cancels: null,
  autofill_starts: null,
  behavior_threat_level: null,
  bot_score: null,
  completion_time: null,
  devtools_open: null,
  debugger_attached: null,
  distraction_events: null,
  hesitation_baseline: null,
  hesitation_count: null,
  hesitation_percentage: null,
  hesitation_time: null,
  mobile_sdk_version_less_than_minimum_count: null,
  request_spoof_attempts: null,
  shortcut_copies: null,
  shortcut_pastes: null,
  user_agent_spoof_attempts: null
)
```

