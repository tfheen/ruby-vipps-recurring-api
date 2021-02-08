# VippsRecurring::VippsApiError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  | [optional] |
| **field** | **String** |  | [optional] |
| **message** | **String** |  |  |
| **context_id** | **String** |  |  |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::VippsApiError.new(
  code: null,
  field: null,
  message: Description of the error,
  context_id: 0b7a2d85-8233-4a0f-867b-fa77a8cdf8de
)
```

