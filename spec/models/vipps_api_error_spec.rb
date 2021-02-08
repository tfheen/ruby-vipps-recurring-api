=begin
#Recurring Payments Merchant API

## Recurring payments Recurring payments is used for subscription payments such as weekly dues for newspaper access, monthly dues for public transportation, etc. 1. A draft agreement is initialized and the user is redirected for approval. 2. The user approves the agreement and the merchant can call GET on the agreement to verify the status. 3. The merchant can start sending charges which will be charged the user in the future. The merchant is responsible for checking the status of charges, and cancelling any user access if charges are failing (or contacting the user). ## Authentication See <a href=\"#/Access%20Controller/getAccessToken\" target=\"_blank\">Get Access Token</a> For information regarding authentication please read [our guide](https://github.com/vippsas/vipps-recurring-api/blob/master/vipps-recurring-api.md#authentication-and-authorization---api-access-token)

The version of the OpenAPI document: 2.1.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for VippsRecurring::VippsApiError
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe VippsRecurring::VippsApiError do
  let(:instance) { VippsRecurring::VippsApiError.new }

  describe 'test an instance of VippsApiError' do
    it 'should create an instance of VippsApiError' do
      expect(instance).to be_instance_of(VippsRecurring::VippsApiError)
    end
  end
  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "field"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "context_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
