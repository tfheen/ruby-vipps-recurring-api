# VippsRecurring::CampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_price** | **Integer** | The price of the agreement in the discount period. The lowering of the price will be displayed in-app. |  |
| **_end** | **Time** | The date and time the campaign ends. Needs to be UTC |  |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::CampaignRequest.new(
  campaign_price: 1500,
  _end: 2019-06-01T00:00Z
)
```

