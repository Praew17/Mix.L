import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gami_record.g.dart';

abstract class GamiRecord implements Built<GamiRecord, GamiRecordBuilder> {
  static Serializer<GamiRecord> get serializer => _$gamiRecordSerializer;

  @nullable
  int get coin;

  @nullable
  int get daimond;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GamiRecordBuilder builder) => builder
    ..coin = 0
    ..daimond = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gami');

  static Stream<GamiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GamiRecord._();
  factory GamiRecord([void Function(GamiRecordBuilder) updates]) = _$GamiRecord;

  static GamiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGamiRecordData({
  int coin,
  int daimond,
}) =>
    serializers.toFirestore(
        GamiRecord.serializer,
        GamiRecord((g) => g
          ..coin = coin
          ..daimond = daimond));
