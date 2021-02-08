# VippsRecurring::AgreementUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign** | [**Campaign**](Campaign.md) |  | [optional] |
| **price** | **Integer** | Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK | [optional] |
| **product_name** | **String** | Product name (short) | [optional] |
| **product_description** | **String** | Product description (longer) | [optional] |
| **status** | [**AgreementStatus**](AgreementStatus.md) |  | [optional] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::AgreementUpdate.new(
  campaign: null,
  price: 39900,
  product_name: Premier League subscription,
  product_description: Access to all games of English top football,
  status: null
)
```

