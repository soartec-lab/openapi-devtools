//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_patch_params.g.dart';

/// UserPatchParams
///
/// Properties:
/// * [name] - ユーザー名
/// * [email] - メールアドレス
@BuiltValue()
abstract class UserPatchParams implements Built<UserPatchParams, UserPatchParamsBuilder> {
  /// ユーザー名
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// メールアドレス
  @BuiltValueField(wireName: r'email')
  String? get email;

  UserPatchParams._();

  factory UserPatchParams([void updates(UserPatchParamsBuilder b)]) = _$UserPatchParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPatchParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPatchParams> get serializer => _$UserPatchParamsSerializer();
}

class _$UserPatchParamsSerializer implements PrimitiveSerializer<UserPatchParams> {
  @override
  final Iterable<Type> types = const [UserPatchParams, _$UserPatchParams];

  @override
  final String wireName = r'UserPatchParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPatchParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPatchParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserPatchParamsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPatchParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPatchParamsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

