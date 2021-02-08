# VippsRecurring::AgreementControllerApi

All URIs are relative to *https://api.vipps.no/recurring*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**draft_agreement**](AgreementControllerApi.md#draft_agreement) | **POST** /v2/agreements | Create a new Agreement, to be confirmed in Vipps |
| [**get_agreement**](AgreementControllerApi.md#get_agreement) | **GET** /v2/agreements/{agreementId} | Fetch an Agreement |
| [**list_agreements**](AgreementControllerApi.md#list_agreements) | **GET** /v2/agreements | List Agreements |
| [**update_agreement**](AgreementControllerApi.md#update_agreement) | **PATCH** /v2/agreements/{agreementId} | Update an Agreement |


## draft_agreement

> <AgreementReference> draft_agreement(agreement_request, opts)

Create a new Agreement, to be confirmed in Vipps

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

api_instance = VippsRecurring::AgreementControllerApi.new
agreement_request = VippsRecurring::AgreementRequest.new({currency: VippsRecurring::Currency::NOK, interval: VippsRecurring::Interval::MONTH, interval_count: 2, is_app: true, merchant_agreement_url: 'https://www.example.com/vipps-subscriptions/1234/', merchant_redirect_url: 'https://api.example.com/vipps-landing', price: 39900, product_name: 'Premier League subscription', product_description: 'Access to all games of English top football'}) # AgreementRequest | 
opts = {
  idempotency_key: 'aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK', # String | Idempotency key
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # Create a new Agreement, to be confirmed in Vipps
  result = api_instance.draft_agreement(agreement_request, opts)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->draft_agreement: #{e}"
end
```

#### Using the draft_agreement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgreementReference>, Integer, Hash)> draft_agreement_with_http_info(agreement_request, opts)

```ruby
begin
  # Create a new Agreement, to be confirmed in Vipps
  data, status_code, headers = api_instance.draft_agreement_with_http_info(agreement_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgreementReference>
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->draft_agreement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_request** | [**AgreementRequest**](AgreementRequest.md) |  |  |
| **idempotency_key** | **String** | Idempotency key | [optional] |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

[**AgreementReference**](AgreementReference.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8


## get_agreement

> <Agreement> get_agreement(agreement_id)

Fetch an Agreement

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

api_instance = VippsRecurring::AgreementControllerApi.new
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)

begin
  # Fetch an Agreement
  result = api_instance.get_agreement(agreement_id)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->get_agreement: #{e}"
end
```

#### Using the get_agreement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Agreement>, Integer, Hash)> get_agreement_with_http_info(agreement_id)

```ruby
begin
  # Fetch an Agreement
  data, status_code, headers = api_instance.get_agreement_with_http_info(agreement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Agreement>
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->get_agreement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agreement_id** | **String** | The agreement identifier (id) |  |

### Return type

[**Agreement**](Agreement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## list_agreements

> <Array<Agreement>> list_agreements(opts)

List Agreements

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

api_instance = VippsRecurring::AgreementControllerApi.new
opts = {
  status: VippsRecurring::AgreementStatus::PENDING, # AgreementStatus | Filter by status
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # List Agreements
  result = api_instance.list_agreements(opts)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->list_agreements: #{e}"
end
```

#### Using the list_agreements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Agreement>>, Integer, Hash)> list_agreements_with_http_info(opts)

```ruby
begin
  # List Agreements
  data, status_code, headers = api_instance.list_agreements_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Agreement>>
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->list_agreements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**AgreementStatus**](.md) | Filter by status | [optional] |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

[**Array&lt;Agreement&gt;**](Agreement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json;charset=UTF-8


## update_agreement

> <AgreementUpdateReference> update_agreement(idempotency_key, agreement_id, agreement_update, opts)

Update an Agreement

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

api_instance = VippsRecurring::AgreementControllerApi.new
idempotency_key = 'aGFoYWhhaGFoYWhhaGFoYWhoYWhhYWhhaGEK' # String | Idempotency key
agreement_id = 'agr_5kSeqzFAMkfBbc' # String | The agreement identifier (id)
agreement_update = VippsRecurring::AgreementUpdate.new # AgreementUpdate | 
opts = {
  vipps_system_name: 'woocommerce', # String | The name of the ecommerce solution. One word in lowercase letters is good.
  vipps_system_version: '5.4', # String | The version number of the ecommerce solution.
  vipps_system_plugin_name: 'vipps-woocommerce', # String | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good.
  vipps_system_plugin_version: '1.2.1' # String | The version number of the ecommerce plugin (if applicable).
}

begin
  # Update an Agreement
  result = api_instance.update_agreement(idempotency_key, agreement_id, agreement_update, opts)
  p result
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->update_agreement: #{e}"
end
```

#### Using the update_agreement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AgreementUpdateReference>, Integer, Hash)> update_agreement_with_http_info(idempotency_key, agreement_id, agreement_update, opts)

```ruby
begin
  # Update an Agreement
  data, status_code, headers = api_instance.update_agreement_with_http_info(idempotency_key, agreement_id, agreement_update, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AgreementUpdateReference>
rescue VippsRecurring::ApiError => e
  puts "Error when calling AgreementControllerApi->update_agreement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **idempotency_key** | **String** | Idempotency key |  |
| **agreement_id** | **String** | The agreement identifier (id) |  |
| **agreement_update** | [**AgreementUpdate**](AgreementUpdate.md) |  |  |
| **vipps_system_name** | **String** | The name of the ecommerce solution. One word in lowercase letters is good. | [optional] |
| **vipps_system_version** | **String** | The version number of the ecommerce solution. | [optional] |
| **vipps_system_plugin_name** | **String** | The name of the ecommerce plugin (if applicable). One word in lowercase letters is good. | [optional] |
| **vipps_system_plugin_version** | **String** | The version number of the ecommerce plugin (if applicable). | [optional] |

### Return type

[**AgreementUpdateReference**](AgreementUpdateReference.md)

### Authorization

[bearerAuth](../README.md#bearerAuth), [ocpSubscriptionKey](../README.md#ocpSubscriptionKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json;charset=UTF-8

