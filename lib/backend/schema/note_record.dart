import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'note_record.g.dart';

abstract class NoteRecord implements Built<NoteRecord, NoteRecordBuilder> {
  static Serializer<NoteRecord> get serializer => _$noteRecordSerializer;

  @nullable
  DateTime get timepig;

  @nullable
  String get detail;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NoteRecordBuilder builder) => builder
    ..detail = ''
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('note');

  static Stream<NoteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NoteRecord._();
  factory NoteRecord([void Function(NoteRecordBuilder) updates]) = _$NoteRecord;

  static NoteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNoteRecordData({
  DateTime timepig,
  String detail,
  String name,
}) =>
    serializers.toFirestore(
        NoteRecord.serializer,
        NoteRecord((n) => n
          ..timepig = timepig
          ..detail = detail
          ..name = name));
