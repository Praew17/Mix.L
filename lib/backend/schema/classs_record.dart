import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'classs_record.g.dart';

abstract class ClasssRecord
    implements Built<ClasssRecord, ClasssRecordBuilder> {
  static Serializer<ClasssRecord> get serializer => _$classsRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get detail;

  @nullable
  DateTime get time;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ClasssRecordBuilder builder) => builder
    ..name = ''
    ..detail = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classs');

  static Stream<ClasssRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ClasssRecord._();
  factory ClasssRecord([void Function(ClasssRecordBuilder) updates]) =
      _$ClasssRecord;

  static ClasssRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createClasssRecordData({
  String name,
  String detail,
  DateTime time,
  String img,
}) =>
    serializers.toFirestore(
        ClasssRecord.serializer,
        ClasssRecord((c) => c
          ..name = name
          ..detail = detail
          ..time = time
          ..img = img));
