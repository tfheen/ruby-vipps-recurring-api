# VippsRecurring::AccessTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **String** |  | [optional] |
| **ext_expires_in** | **String** |  | [optional] |
| **expires_on** | **String** |  | [optional] |
| **not_before** | **String** |  | [optional] |
| **resource** | **String** |  | [optional] |
| **access_token** | **String** |  | [optional] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::AccessTokenResponse.new(
  token_type: Bearer,
  expires_in: 3600,
  ext_expires_in: 3600,
  expires_on: 1569831424,
  not_before: 1569827524,
  resource: 00000003-0000-0000-d000-000000000000,
  access_token: aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK
)
```

