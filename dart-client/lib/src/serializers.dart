//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:dart-client/src/date_serializer.dart';
import 'package:dart-client/src/model/date.dart';

import 'package:dart-client/src/model/bad_request.dart';
import 'package:dart-client/src/model/created.dart';
import 'package:dart-client/src/model/error_detail.dart';
import 'package:dart-client/src/model/forbidden.dart';
import 'package:dart-client/src/model/internal_server_error.dart';
import 'package:dart-client/src/model/not_found.dart';
import 'package:dart-client/src/model/unauthorized.dart';
import 'package:dart-client/src/model/unprocessable_entity_error.dart';
import 'package:dart-client/src/model/user.dart';
import 'package:dart-client/src/model/user_role.dart';
import 'package:dart-client/src/model/users.dart';
import 'package:dart-client/src/model/users_create_params.dart';

part 'serializers.g.dart';

@SerializersFor([
  BadRequest,
  Created,
  ErrorDetail,
  Forbidden,
  InternalServerError,
  NotFound,
  Unauthorized,
  UnprocessableEntityError,
  User,
  UserRole,
  Users,
  UsersCreateParams,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
