# VippsRecurring::Agreement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign** | [**Campaign**](Campaign.md) |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional][default to &#39;NOK&#39;] |
| **id** | **String** | Uniquely identifies this agreement | [optional] |
| **interval** | [**Interval**](Interval.md) |  | [default to &#39;MONTH&#39;] |
| **interval_count** | **Integer** | Number of intervals between charges. Example: interval&#x3D;week, intervalCount&#x3D;2 to be able to charge every two weeks. Charges should occur at least once a year. | [default to 1] |
| **price** | **Integer** | Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **product_name** | **String** | Product name (short) |  |
| **product_description** | **String** | Product description (longer) |  |
| **start** | **Time** | Date when agreement was started. | [optional] |
| **stop** | **Time** | Date when agreement was stopped. | [optional] |
| **status** | [**AgreementStatus**](AgreementStatus.md) |  |  |
| **sub** | **String** | User identifier (subject). Will be null if profile data was not requested. | [optional] |
| **userinfo_url** | **String** | The full path of the URL for the userinfo endpoint where the user data can be retrieved. Will be null if profile data was not requested. | [optional] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::Agreement.new(
  campaign: null,
  currency: null,
  id: agr_5kSeqzFAMkfBbc,
  interval: null,
  interval_count: 1,
  price: 39900,
  product_name: Premier League subscription,
  product_description: Access to all games of English top football,
  start: 2019-01-01T00:00Z,
  stop: 2019-12-31T00:00Z,
  status: null,
  sub: 8d7de74e-0243-11eb-adc1-0242ac120002,
  userinfo_url: https://api.vipps.no/vipps-userinfo-api/userinfo/8d7de74e-0243-11eb-adc1-0242ac120002
)
```

