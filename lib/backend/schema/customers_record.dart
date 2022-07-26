import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'customers_record.g.dart';

abstract class CustomersRecord
    implements Built<CustomersRecord, CustomersRecordBuilder> {
  static Serializer<CustomersRecord> get serializer =>
      _$customersRecordSerializer;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'account_manager')
  DocumentReference? get accountManager;

  AddressStruct get address;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CustomersRecordBuilder builder) => builder
    ..firstName = ''
    ..lastName = ''
    ..address = AddressStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CustomersRecord._();
  factory CustomersRecord([void Function(CustomersRecordBuilder) updates]) =
      _$CustomersRecord;

  static CustomersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCustomersRecordData({
  String? firstName,
  String? lastName,
  DocumentReference? accountManager,
  AddressStruct? address,
}) {
  final firestoreData = serializers.toFirestore(
    CustomersRecord.serializer,
    CustomersRecord(
      (c) => c
        ..firstName = firstName
        ..lastName = lastName
        ..accountManager = accountManager
        ..address = AddressStructBuilder(),
    ),
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}
