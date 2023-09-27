import 'package:test/test.dart';
import 'package:dart-client/dart-client.dart';


/// tests for UserApi
void main() {
  final instance = DartClient().getUserApi();

  group(UserApi, () {
    // uidに紐づくユーザーを削除する
    //
    //Future<Ok> deleteUser(String uid) async
    test('test deleteUser', () async {
      // TODO
    });

    // uidに紐づくユーザーを取得
    //
    //Future<User> getUser(String uid) async
    test('test getUser', () async {
      // TODO
    });

    // ユーザーの更新
    //
    //Future<Ok> patchUser(String uid, UserPatchParams userPatchParams) async
    test('test patchUser', () async {
      // TODO
    });

  });
}
