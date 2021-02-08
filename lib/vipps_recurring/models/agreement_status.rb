=begin
#Recurring Payments Merchant API

## Recurring payments Recurring payments is used for subscription payments such as weekly dues for newspaper access, monthly dues for public transportation, etc. 1. A draft agreement is initialized and the user is redirected for approval. 2. The user approves the agreement and the merchant can call GET on the agreement to verify the status. 3. The merchant can start sending charges which will be charged the user in the future. The merchant is responsible for checking the status of charges, and cancelling any user access if charges are failing (or contacting the user). ## Authentication See <a href=\"#/Access%20Controller/getAccessToken\" target=\"_blank\">Get Access Token</a> For information regarding authentication please read [our guide](https://github.com/vippsas/vipps-recurring-api/blob/master/vipps-recurring-api.md#authentication-and-authorization---api-access-token)

The version of the OpenAPI document: 2.1.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module VippsRecurring
  class AgreementStatus
    PENDING = "PENDING".freeze
    ACTIVE = "ACTIVE".freeze
    STOPPED = "STOPPED".freeze
    EXPIRED = "EXPIRED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AgreementStatus.constants.select { |c| AgreementStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AgreementStatus" if constantValues.empty?
      value
    end
  end
end
