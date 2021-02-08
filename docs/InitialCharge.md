# VippsRecurring::InitialCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **currency** | [**Currency**](Currency.md) |  | [default to &#39;NOK&#39;] |
| **description** | **String** | This field is visible to the end user in-app |  |
| **transaction_type** | [**TransactionType**](TransactionType.md) |  |  |
| **order_id** | **String** | Optional orderId, will be auto generated if not provided | [optional] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::InitialCharge.new(
  amount: 49900,
  currency: null,
  description: Premier League subscription,
  transaction_type: null,
  order_id: acme-shop-123-order123abc
)
```

