=begin
#Recurring Payments Merchant API

## Recurring payments Recurring payments is used for subscription payments such as weekly dues for newspaper access, monthly dues for public transportation, etc. 1. A draft agreement is initialized and the user is redirected for approval. 2. The user approves the agreement and the merchant can call GET on the agreement to verify the status. 3. The merchant can start sending charges which will be charged the user in the future. The merchant is responsible for checking the status of charges, and cancelling any user access if charges are failing (or contacting the user). ## Authentication See <a href=\"#/Access%20Controller/getAccessToken\" target=\"_blank\">Get Access Token</a> For information regarding authentication please read [our guide](https://github.com/vippsas/vipps-recurring-api/blob/master/vipps-recurring-api.md#authentication-and-authorization---api-access-token)

The version of the OpenAPI document: 2.1.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1-SNAPSHOT

=end

require 'cgi'

module VippsRecurring
  class AccessControllerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Access Token
    # @param client_id [String] Provided Client ID
    # @param client_secret [String] Provided Client Secret
    # @param [Hash] opts the optional parameters
    # @return [AccessTokenResponse]
    def get_access_token(client_id, client_secret, opts = {})
      data, _status_code, _headers = get_access_token_with_http_info(client_id, client_secret, opts)
      data
    end

    # Get Access Token
    # @param client_id [String] Provided Client ID
    # @param client_secret [String] Provided Client Secret
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessTokenResponse, Integer, Hash)>] AccessTokenResponse data, response status code and response headers
    def get_access_token_with_http_info(client_id, client_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccessControllerApi.get_access_token ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling AccessControllerApi.get_access_token"
      end
      # verify the required parameter 'client_secret' is set
      if @api_client.config.client_side_validation && client_secret.nil?
        fail ArgumentError, "Missing the required parameter 'client_secret' when calling AccessControllerApi.get_access_token"
      end
      # resource path
      local_var_path = '/accesstoken/get'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      header_params[:'client_id'] = client_id
      header_params[:'client_secret'] = client_secret

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccessTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ocpSubscriptionKey']

      new_options = opts.merge(
        :operation => :"AccessControllerApi.get_access_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccessControllerApi#get_access_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
