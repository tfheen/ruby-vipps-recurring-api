# VippsRecurring::AgreementRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign** | [**CampaignRequest**](CampaignRequest.md) |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [default to &#39;NOK&#39;] |
| **customer_phone_number** | **String** | Customers phone number (if available). Used to simplify the following Vipps interaction. MSISDN: https://www.msisdn.org | [optional] |
| **initial_charge** | [**InitialCharge**](InitialCharge.md) |  | [optional] |
| **interval** | [**Interval**](Interval.md) |  | [default to &#39;MONTH&#39;] |
| **interval_count** | **Integer** | Number of intervals between charges. Example: interval&#x3D;week, intervalCount&#x3D;2 to be able to charge every two weeks. Charges should occur at least once a year |  |
| **is_app** | **Boolean** | If merchant is redirecting user from an app or a mobile device. |  |
| **merchant_agreement_url** | **String** | URL where Vipps can send the customer to view/manage their subscription. Typically a \&quot;My page\&quot; where the user can change, pause, cancel, etc. We recommend letting users logg inn with Vipps, not with username and password. |  |
| **merchant_redirect_url** | **String** | URL where customer should be redirected after the agreement has been approved/rejected in the Vipps mobile application. |  |
| **price** | **Integer** | Treated as a whole sum postfixed with two decimals for cents, eg 234 &#x3D; 2.34 NOK |  |
| **product_name** | **String** | Product name (short) |  |
| **product_description** | **String** | Product description (longer) |  |
| **scope** | **String** | Space separated list of the user profile-data scopes to require for the agreement. | [optional] |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::AgreementRequest.new(
  campaign: null,
  currency: null,
  customer_phone_number: 4791234567,
  initial_charge: null,
  interval: null,
  interval_count: 2,
  is_app: true,
  merchant_agreement_url: https://www.example.com/vipps-subscriptions/1234/,
  merchant_redirect_url: https://api.example.com/vipps-landing,
  price: 39900,
  product_name: Premier League subscription,
  product_description: Access to all games of English top football,
  scope: address name email birthDate phoneNumber
)
```

