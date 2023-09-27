//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_detail.g.dart';

/// ErrorDetail
///
/// Properties:
/// * [propertyName] - エラーになったプロパティ
/// * [propertyMessage] - エラーメッセージ
@BuiltValue()
abstract class ErrorDetail implements Built<ErrorDetail, ErrorDetailBuilder> {
  /// エラーになったプロパティ
  @BuiltValueField(wireName: r'propertyName')
  String get propertyName;

  /// エラーメッセージ
  @BuiltValueField(wireName: r'propertyMessage')
  String get propertyMessage;

  ErrorDetail._();

  factory ErrorDetail([void updates(ErrorDetailBuilder b)]) = _$ErrorDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ErrorDetail> get serializer => _$ErrorDetailSerializer();
}

class _$ErrorDetailSerializer implements PrimitiveSerializer<ErrorDetail> {
  @override
  final Iterable<Type> types = const [ErrorDetail, _$ErrorDetail];

  @override
  final String wireName = r'ErrorDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ErrorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'propertyName';
    yield serializers.serialize(
      object.propertyName,
      specifiedType: const FullType(String),
    );
    yield r'propertyMessage';
    yield serializers.serialize(
      object.propertyMessage,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ErrorDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'propertyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.propertyName = valueDes;
          break;
        case r'propertyMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.propertyMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ErrorDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorDetailBuilder();
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

