# dart-client.api.UsersApi

## Load the API package
```dart
import 'package:dart-client/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsers**](UsersApi.md#getusers) | **GET** /users | ユーザー一覧の取得
[**users**](UsersApi.md#users) | **POST** /users | ユーザーの追加


# **getUsers**
> Users getUsers(page)

ユーザー一覧の取得

### Example
```dart
import 'package:dart-client/api.dart';

final api = DartClient().getUsersApi();
final int page = 10; // int | ページャー

try {
    final response = api.getUsers(page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| ページャー | [optional] 

### Return type

[**Users**](Users.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users**
> Created users(usersCreateParams)

ユーザーの追加

### Example
```dart
import 'package:dart-client/api.dart';

final api = DartClient().getUsersApi();
final UsersCreateParams usersCreateParams = ; // UsersCreateParams | 

try {
    final response = api.users(usersCreateParams);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->users: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersCreateParams** | [**UsersCreateParams**](UsersCreateParams.md)|  | 

### Return type

[**Created**](Created.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

