# VippsRecurring::ChargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **currency** | [**Currency**](Currency.md) |  | [optional][default to &#39;NOK&#39;] |
| **description** | **String** | This field is visible to the end user in-app |  |
| **due** | **Date** | YYYY-MM-DD |  |
| **retry_days** | **Integer** | The service will attempt to charge the customer for N days [non inclusive], must be null or contain a value &gt;&#x3D; 0. If zero, no retries will be performed | [optional][default to 0] |
| **order_id** | **String** | Optional orderId, will be auto generated if not provided | [optional] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::ChargeRequest.new(
  amount: 49900,
  currency: null,
  description: Premier League subscription,
  due: Tue Dec 31 00:00:00 GMT 2030,
  retry_days: 5,
  order_id: acme-shop-123-order123abc
)
```

