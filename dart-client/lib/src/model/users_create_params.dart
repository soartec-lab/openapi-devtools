//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'users_create_params.g.dart';

/// UsersCreateParams
///
/// Properties:
/// * [name] - 名前
@BuiltValue()
abstract class UsersCreateParams implements Built<UsersCreateParams, UsersCreateParamsBuilder> {
  /// 名前
  @BuiltValueField(wireName: r'name')
  String get name;

  UsersCreateParams._();

  factory UsersCreateParams([void updates(UsersCreateParamsBuilder b)]) = _$UsersCreateParams;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UsersCreateParamsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UsersCreateParams> get serializer => _$UsersCreateParamsSerializer();
}

class _$UsersCreateParamsSerializer implements PrimitiveSerializer<UsersCreateParams> {
  @override
  final Iterable<Type> types = const [UsersCreateParams, _$UsersCreateParams];

  @override
  final String wireName = r'UsersCreateParams';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UsersCreateParams object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UsersCreateParams object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UsersCreateParamsBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UsersCreateParams deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UsersCreateParamsBuilder();
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

