//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart-client/src/model/error_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unprocessable_entity_error.g.dart';

/// UnprocessableEntityError
///
/// Properties:
/// * [message] 
/// * [errorDetails] 
@BuiltValue()
abstract class UnprocessableEntityError implements Built<UnprocessableEntityError, UnprocessableEntityErrorBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'errorDetails')
  BuiltList<ErrorDetail>? get errorDetails;

  UnprocessableEntityError._();

  factory UnprocessableEntityError([void updates(UnprocessableEntityErrorBuilder b)]) = _$UnprocessableEntityError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnprocessableEntityErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnprocessableEntityError> get serializer => _$UnprocessableEntityErrorSerializer();
}

class _$UnprocessableEntityErrorSerializer implements PrimitiveSerializer<UnprocessableEntityError> {
  @override
  final Iterable<Type> types = const [UnprocessableEntityError, _$UnprocessableEntityError];

  @override
  final String wireName = r'UnprocessableEntityError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnprocessableEntityError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.errorDetails != null) {
      yield r'errorDetails';
      yield serializers.serialize(
        object.errorDetails,
        specifiedType: const FullType(BuiltList, [FullType(ErrorDetail)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnprocessableEntityError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UnprocessableEntityErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'errorDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ErrorDetail)]),
          ) as BuiltList<ErrorDetail>;
          result.errorDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnprocessableEntityError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnprocessableEntityErrorBuilder();
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

