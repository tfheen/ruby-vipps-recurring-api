# VippsRecurring::RefundRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The total amount which has been refunded, in case of status refund/partial refund. Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **description** | **String** | A textual description of the operation, which will be displayed in the users app. |  |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::RefundRequest.new(
  amount: 49900,
  description: Forgot to apply discount, refunding 50%
)
```

