# VippsRecurring::ChargeControllerApi

All URIs are relative to *https://api.vipps.no/recurring*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_charge**](ChargeControllerApi.md#cancel_charge) | **DELETE** /v2/agreements/{agreementId}/charges/{chargeId} | Cancel a Charge |
| [**capture_charge**](ChargeControllerApi.md#capture_charge) | **POST** /v2/agreements/{agreementId}/charges/{chargeId}/capture | Capture a reserved charge |
| [**create_charge**](ChargeControllerApi.md#create_charge) | **POST** /v2/agreements/{agreementId}/charges | Create a new charge |
| [**get_charge**](ChargeControllerApi.md#get_charge) | **GET** /v2/agreements/{agreementId}/charges/{chargeId} | Fetch a Charge |
| [**list_charges**](ChargeControllerApi.md#list_charges) | **GET** /v2/agreements/{agreementId}/charges | List Charges |
| [**refund_charge**](ChargeControllerApi.md#refund_charge) | **POST** /v2/agreements/{agreementId}/charges/{chargeId}/refund | Refund a charge |


## cancel_charge

> cancel_charge(agreement_id, charge_id, opts)

Cancel a Charge

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::ChargeControllerApi.new
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
charge_id = 'chr_123abc456' # String | The charge identifier (id)
opts = {
  idempotency_key: 'aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK', # String | Idempotency key
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # Cancel a Charge
  api_instance.cancel_charge(agreement_id, charge_id, opts)
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->cancel_charge: #{e}"
end
```

#### Using the cancel_charge_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_charge_with_http_info(agreement_id, charge_id, opts)

```ruby
begin
  # Cancel a Charge
  data, status_code, headers = api_instance.cancel_charge_with_http_info(agreement_id, charge_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->cancel_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **charge_id** | **String** | The charge identifier (id) |  |
| **idempotency_key** | **String** | Idempotency key | [optional] |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## capture_charge

> capture_charge(idempotency_key, agreement_id, charge_id, opts)

Capture a reserved charge

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::ChargeControllerApi.new
idempotency_key = 'aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK' # String | Idempotency key
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
charge_id = 'chr_123abc456' # String | The charge identifier (id)
opts = {
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # Capture a reserved charge
  api_instance.capture_charge(idempotency_key, agreement_id, charge_id, opts)
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->capture_charge: #{e}"
end
```

#### Using the capture_charge_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capture_charge_with_http_info(idempotency_key, agreement_id, charge_id, opts)

```ruby
begin
  # Capture a reserved charge
  data, status_code, headers = api_instance.capture_charge_with_http_info(idempotency_key, agreement_id, charge_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->capture_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Idempotency key |  |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **charge_id** | **String** | The charge identifier (id) |  |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## create_charge

> <ChargeReference> create_charge(idempotency_key, agreement_id, charge_request, opts)

Create a new charge

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::ChargeControllerApi.new
idempotency_key = 'aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK' # String | Idempotency-Key
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
charge_request = VippsRecurring::ChargeRequest.new({amount: 49900, description: 'Premier League subscription', due: Date.parse('Tue Dec 31 00:00:00 GMT 2030')}) # ChargeRequest | 
opts = {
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # Create a new charge
  result = api_instance.create_charge(idempotency_key, agreement_id, charge_request, opts)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->create_charge: #{e}"
end
```

#### Using the create_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChargeReference>, Integer, Hash)> create_charge_with_http_info(idempotency_key, agreement_id, charge_request, opts)

```ruby
begin
  # Create a new charge
  data, status_code, headers = api_instance.create_charge_with_http_info(idempotency_key, agreement_id, charge_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChargeReference>
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->create_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Idempotency-Key |  |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **charge_request** | [**ChargeRequest**](ChargeRequest.md) |  |  |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

[**ChargeReference**](ChargeReference.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## get_charge

> <Charge> get_charge(agreement_id, charge_id)

Fetch a Charge

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::ChargeControllerApi.new
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
charge_id = 'chr_123abc456' # String | The charge identifier (id)

begin
  # Fetch a Charge
  result = api_instance.get_charge(agreement_id, charge_id)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->get_charge: #{e}"
end
```

#### Using the get_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Charge>, Integer, Hash)> get_charge_with_http_info(agreement_id, charge_id)

```ruby
begin
  # Fetch a Charge
  data, status_code, headers = api_instance.get_charge_with_http_info(agreement_id, charge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Charge>
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->get_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **charge_id** | **String** | The charge identifier (id) |  |

### Return type

[**Charge**](Charge.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## list_charges

> <Array<Charge>> list_charges(agreement_id, opts)

List Charges

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::ChargeControllerApi.new
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
opts = {
  charge_status: VippsRecurring::ChargeStatus::PENDING, # ChargeStatus | The status of the charge
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # List Charges
  result = api_instance.list_charges(agreement_id, opts)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->list_charges: #{e}"
end
```

#### Using the list_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Charge>>, Integer, Hash)> list_charges_with_http_info(agreement_id, opts)

```ruby
begin
  # List Charges
  data, status_code, headers = api_instance.list_charges_with_http_info(agreement_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Charge>>
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->list_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **charge_status** | [**ChargeStatus**](.md) | The status of the charge | [optional][default to &#39;PENDING&#39;] |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

[**Array&lt;Charge&gt;**](Charge.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## refund_charge

> refund_charge(idempotency_key, agreement_id, charge_id, refund_request, opts)

Refund a charge

### Examples

```ruby
require 'time'
require 'vipps_recurring'
# setup authorization
VippsRecurring.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: ocpSubscriptionKey
  config.api_key['ocpSubscriptionKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ocpSubscriptionKey'] = 'Bearer'
end

api_instance = VippsRecurring::ChargeControllerApi.new
idempotency_key = 'aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK' # String | Idempotency key
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
charge_id = 'chr_123abc456' # String | The charge identifier (id)
refund_request = VippsRecurring::RefundRequest.new({amount: 49900, description: 'Forgot to apply discount, refunding 50%'}) # RefundRequest | 
opts = {
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # Refund a charge
  api_instance.refund_charge(idempotency_key, agreement_id, charge_id, refund_request, opts)
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->refund_charge: #{e}"
end
```

#### Using the refund_charge_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> refund_charge_with_http_info(idempotency_key, agreement_id, charge_id, refund_request, opts)

```ruby
begin
  # Refund a charge
  data, status_code, headers = api_instance.refund_charge_with_http_info(idempotency_key, agreement_id, charge_id, refund_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue VippsRecurring::ApiError => e
  puts "Error when calling ChargeControllerApi->refund_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Idempotency key |  |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **charge_id** | **String** | The charge identifier (id) |  |
| **refund_request** | [**RefundRequest**](RefundRequest.md) |  |  |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8

