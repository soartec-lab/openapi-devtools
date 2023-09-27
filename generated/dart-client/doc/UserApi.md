# dart-client.api.UserApi

## Load the API package
```dart
import 'package:dart-client/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUser**](UserApi.md#deleteuser) | **DELETE** /users/{uid} | uidに紐づくユーザーを削除する
[**getUser**](UserApi.md#getuser) | **GET** /users/{uid} | uidに紐づくユーザーを取得
[**patchUser**](UserApi.md#patchuser) | **PATCH** /users/{uid} | ユーザーの更新


# **deleteUser**
> Ok deleteUser(uid)

uidに紐づくユーザーを削除する

### Example
```dart
import 'package:dart-client/api.dart';

final api = DartClient().getUserApi();
final String uid = 0fc59eb5-cd11-44ad-bf03-f6930d768f15; // String | 対象のユーザーのuid

try {
    final response = api.deleteUser(uid);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| 対象のユーザーのuid | 

### Return type

[**Ok**](Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser(uid)

uidに紐づくユーザーを取得

### Example
```dart
import 'package:dart-client/api.dart';

final api = DartClient().getUserApi();
final String uid = 0fc59eb5-cd11-44ad-bf03-f6930d768f15; // String | 対象ユーザーのuid

try {
    final response = api.getUser(uid);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| 対象ユーザーのuid | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUser**
> Ok patchUser(uid, userPatchParams)

ユーザーの更新

### Example
```dart
import 'package:dart-client/api.dart';

final api = DartClient().getUserApi();
final String uid = 0fc59eb5-cd11-44ad-bf03-f6930d768f15; // String | 対象のユーザーのuid
final UserPatchParams userPatchParams = ; // UserPatchParams | ユーザー更新のためのパラメータ

try {
    final response = api.patchUser(uid, userPatchParams);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->patchUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uid** | **String**| 対象のユーザーのuid | 
 **userPatchParams** | [**UserPatchParams**](UserPatchParams.md)| ユーザー更新のためのパラメータ | 

### Return type

[**Ok**](Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

