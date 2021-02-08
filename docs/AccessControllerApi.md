# VippsRecurring::AccessControllerApi

All URIs are relative to *https://api.vipps.no/recurring*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_access_token**](AccessControllerApi.md#get_access_token) | **POST** /accesstoken/get | Get Access Token |


## get_access_token

> <AccessTokenResponse> get_access_token(client_id, client_secret)

Get Access Token

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::AccessControllerApi.new
client_id = 'fb492b5e-7907-4d83-ba20-c7fb60ca35de' # String | Provided Client ID
client_secret = 'Y8Kteew6GE2ZmeycEt6egg==' # String | Provided Client Secret

begin
  # Get Access Token
  result = api_instance.get_access_token(client_id, client_secret)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling AccessControllerApi->get_access_token: #{e}"
end
```

#### Using the get_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccessTokenResponse>, Integer, Hash)> get_access_token_with_http_info(client_id, client_secret)

```ruby
begin
  # Get Access Token
  data, status_code, headers = api_instance.get_access_token_with_http_info(client_id, client_secret)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccessTokenResponse>
rescue VippsRecurring::ApiError => e
  puts "Error when calling AccessControllerApi->get_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Provided Client ID |  |
| **client_secret** | **String** | Provided Client Secret |  |

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

[ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8

