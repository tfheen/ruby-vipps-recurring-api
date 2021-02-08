# VippsRecurring::AgreementReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_resource** | **String** | Reference to Agreement which user may agree to. Initially the Agreement is in a pendingUserApproval state, and it enters active state once user has approved in the Vipps application. |  |
| **agreement_id** | **String** | Id of a Agreement which user may agree to. Initially the Agreement is in a pendingUserApproval state, and it enters active state once user has approved in the Vipps application. |  |
| **vipps_confirmation_url** | **String** | The &#x60;vippsConfirmationUrl&#x60; should be used to redirect the user to the Vipps landing page in a desktop flow (with &#x60;https://&#x60;), or to the Vipps app in a mobile flow (with &#x60;vipps://&#x60;), where the user can then approve the agreement. |  |
| **charge_id** | **String** | The Id of the initialCharge if given, otherwise &#x60;null&#x60;. If an &#x60;orderId&#x60; is specified this is used as the &#x60;chargeId&#x60; otherwise it is auto generated. |  |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::AgreementReference.new(
  agreement_resource: https://api.vipps.no/v2/agreements/agr_5kSeqzFAMkfBbc,
  agreement_id: agr_5kSeqzFAMkfBbc,
  vipps_confirmation_url: https://api.vipps.no/v2/register/U6JUjQXq8HQmmV,
  charge_id: chr_123abc456
)
```

