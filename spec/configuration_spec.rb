=begin
#Recurring Payments Merchant API

## Recurring payments Recurring payments is used for subscription payments such as weekly dues for newspaper access, monthly dues for public transportation, etc. 1. A draft agreement is initialized and the user is redirected for approval. 2. The user approves the agreement and the merchant can call GET on the agreement to verify the status. 3. The merchant can start sending charges which will be charged the user in the future. The merchant is responsible for checking the status of charges, and cancelling any user access if charges are failing (or contacting the user). ## Authentication See <a href=\"#/Access%20Controller/getAccessToken\" target=\"_blank\">Get Access Token</a> For information regarding authentication please read [our guide](https://github.com/vippsas/vipps-recurring-api/blob/master/vipps-recurring-api.md#authentication-and-authorization---api-access-token)

The version of the OpenAPI document: 2.1.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'spec_helper'

describe VippsRecurring::Configuration do
  let(:config) { VippsRecurring::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.vipps.no/recurring")
    # VippsRecurring.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.vipps.no/recurring")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.vipps.no/recurring")
      end
    end
  end
end
