//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart-client/src/model/error_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ok.g.dart';

/// Ok
///
/// Properties:
/// * [message] 
/// * [errorDetails] 
@BuiltValue()
abstract class Ok implements Built<Ok, OkBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'errorDetails')
  BuiltList<ErrorDetail>? get errorDetails;

  Ok._();

  factory Ok([void updates(OkBuilder b)]) = _$Ok;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Ok> get serializer => _$OkSerializer();
}

class _$OkSerializer implements PrimitiveSerializer<Ok> {
  @override
  final Iterable<Type> types = const [Ok, _$Ok];

  @override
  final String wireName = r'Ok';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Ok object, {
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
    Ok object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OkBuilder result,
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
  Ok deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OkBuilder();
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

