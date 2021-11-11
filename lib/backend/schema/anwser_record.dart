import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'anwser_record.g.dart';

abstract class AnwserRecord
    implements Built<AnwserRecord, AnwserRecordBuilder> {
  static Serializer<AnwserRecord> get serializer => _$anwserRecordSerializer;

  @nullable
  String get id;

  @nullable
  String get ans;

  @nullable
  DateTime get time;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(AnwserRecordBuilder builder) => builder
    ..id = ''
    ..ans = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anwser');

  static Stream<AnwserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AnwserRecord._();
  factory AnwserRecord([void Function(AnwserRecordBuilder) updates]) =
      _$AnwserRecord;

  static AnwserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAnwserRecordData({
  String id,
  String ans,
  DateTime time,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        AnwserRecord.serializer,
        AnwserRecord((a) => a
          ..id = id
          ..ans = ans
          ..time = time
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
