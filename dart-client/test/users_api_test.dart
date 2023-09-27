import 'package:test/test.dart';
import 'package:dart-client/dart-client.dart';


/// tests for UsersApi
void main() {
  final instance = DartClient().getUsersApi();

  group(UsersApi, () {
    // ユーザー一覧の取得
    //
    //Future<Users> getUsers({ int page }) async
    test('test getUsers', () async {
      // TODO
    });

    // ユーザーの追加
    //
    //Future<Created> users(UsersCreateParams usersCreateParams) async
    test('test users', () async {
      // TODO
    });

  });
}
