import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'assing_record.g.dart';

abstract class AssingRecord
    implements Built<AssingRecord, AssingRecordBuilder> {
  static Serializer<AssingRecord> get serializer => _$assingRecordSerializer;

  @nullable
  DateTime get daethline;

  @nullable
  String get name;

  @nullable
  int get coin;

  @nullable
  String get subject;

  @nullable
  int get dimond;

  @nullable
  String get detail;

  @nullable
  String get anser;

  @nullable
  String get id;

  @nullable
  DocumentReference get aa;

  @nullable
  int get yourcoin;

  @nullable
  int get ddd;

  @nullable
  String get dd;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AssingRecordBuilder builder) => builder
    ..name = ''
    ..coin = 0
    ..subject = ''
    ..dimond = 0
    ..detail = ''
    ..anser = ''
    ..id = ''
    ..yourcoin = 0
    ..ddd = 0
    ..dd = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('assing');

  static Stream<AssingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AssingRecord._();
  factory AssingRecord([void Function(AssingRecordBuilder) updates]) =
      _$AssingRecord;

  static AssingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAssingRecordData({
  DateTime daethline,
  String name,
  int coin,
  String subject,
  int dimond,
  String detail,
  String anser,
  String id,
  DocumentReference aa,
  int yourcoin,
  int ddd,
  String dd,
}) =>
    serializers.toFirestore(
        AssingRecord.serializer,
        AssingRecord((a) => a
          ..daethline = daethline
          ..name = name
          ..coin = coin
          ..subject = subject
          ..dimond = dimond
          ..detail = detail
          ..anser = anser
          ..id = id
          ..aa = aa
          ..yourcoin = yourcoin
          ..ddd = ddd
          ..dd = dd));
