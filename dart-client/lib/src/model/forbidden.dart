//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart-client/src/model/error_detail.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forbidden.g.dart';

/// Forbidden
///
/// Properties:
/// * [message] 
/// * [errorDetails] 
@BuiltValue()
abstract class Forbidden implements Built<Forbidden, ForbiddenBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'errorDetails')
  BuiltList<ErrorDetail>? get errorDetails;

  Forbidden._();

  factory Forbidden([void updates(ForbiddenBuilder b)]) = _$Forbidden;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForbiddenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Forbidden> get serializer => _$ForbiddenSerializer();
}

class _$ForbiddenSerializer implements PrimitiveSerializer<Forbidden> {
  @override
  final Iterable<Type> types = const [Forbidden, _$Forbidden];

  @override
  final String wireName = r'Forbidden';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Forbidden object, {
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
    Forbidden object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ForbiddenBuilder result,
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
  Forbidden deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForbiddenBuilder();
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

