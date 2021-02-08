# VippsRecurring::Charge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **amount_refunded** | **Integer** | The total amount which has been refunded, in case of status refund/partial refund. Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **description** | **String** | Description of the charge |  |
| **due** | **Time** | The due date for this charge |  |
| **id** | **String** | Identifier for this charge (for this customer&#39;s subscription). | [default to &#39;NOT_SET&#39;] |
| **status** | [**ChargeStatus**](ChargeStatus.md) |  | [default to &#39;PENDING&#39;] |
| **transaction_id** | **String** | Contains null until the status has reached CHARGED |  |
| **type** | [**ChargeType**](ChargeType.md) |  | [default to &#39;RECURRING&#39;] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::Charge.new(
  amount: 39900,
  amount_refunded: 39900,
  description: Premier League subscription: September,
  due: 2019-06-01T00:00Z,
  id: chg_WCVbcAbRCmu2zk,
  status: null,
  transaction_id: 5001419121,
  type: null
)
```

