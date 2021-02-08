# VippsRecurring::HealthCheckStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | **Boolean** |  |  |
| **cosmos_db** | **Boolean** |  |  |
| **payment_db** | **Boolean** |  |  |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::HealthCheckStatus.new(
  application: null,
  cosmos_db: null,
  payment_db: null
)
```

