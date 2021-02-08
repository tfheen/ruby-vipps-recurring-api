# VippsRecurring::AgreementUpdateReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_id** | **String** | Id of a Agreement which user may agree to. Initially the Agreement is in a pendingUserApproval state, and it enters active state once user has approved in the Vipps application. |  |

## Example

```ruby
require 'vipps_recurring'

instance = VippsRecurring::AgreementUpdateReference.new(
  agreement_id: agr_5kSeqzFAMkfBbc
)
```

