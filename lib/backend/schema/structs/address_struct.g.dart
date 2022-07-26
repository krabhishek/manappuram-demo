// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressStruct> _$addressStructSerializer =
    new _$AddressStructSerializer();

class _$AddressStructSerializer implements StructuredSerializer<AddressStruct> {
  @override
  final Iterable<Type> types = const [AddressStruct, _$AddressStruct];
  @override
  final String wireName = 'AddressStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.line1;
    if (value != null) {
      result
        ..add('line1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.line2;
    if (value != null) {
      result
        ..add('line2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.geocordinate;
    if (value != null) {
      result
        ..add('geocordinate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    return result;
  }

  @override
  AddressStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'line1':
          result.line1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'line2':
          result.line2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'geocordinate':
          result.geocordinate = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressStruct extends AddressStruct {
  @override
  final String? line1;
  @override
  final String? line2;
  @override
  final int? pincode;
  @override
  final LatLng? geocordinate;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AddressStruct([void Function(AddressStructBuilder)? updates]) =>
      (new AddressStructBuilder()..update(updates)).build();

  _$AddressStruct._(
      {this.line1,
      this.line2,
      this.pincode,
      this.geocordinate,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, 'AddressStruct', 'firestoreUtilData');
  }

  @override
  AddressStruct rebuild(void Function(AddressStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressStructBuilder toBuilder() => new AddressStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressStruct &&
        line1 == other.line1 &&
        line2 == other.line2 &&
        pincode == other.pincode &&
        geocordinate == other.geocordinate &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, line1.hashCode), line2.hashCode), pincode.hashCode),
            geocordinate.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressStruct')
          ..add('line1', line1)
          ..add('line2', line2)
          ..add('pincode', pincode)
          ..add('geocordinate', geocordinate)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AddressStructBuilder
    implements Builder<AddressStruct, AddressStructBuilder> {
  _$AddressStruct? _$v;

  String? _line1;
  String? get line1 => _$this._line1;
  set line1(String? line1) => _$this._line1 = line1;

  String? _line2;
  String? get line2 => _$this._line2;
  set line2(String? line2) => _$this._line2 = line2;

  int? _pincode;
  int? get pincode => _$this._pincode;
  set pincode(int? pincode) => _$this._pincode = pincode;

  LatLng? _geocordinate;
  LatLng? get geocordinate => _$this._geocordinate;
  set geocordinate(LatLng? geocordinate) => _$this._geocordinate = geocordinate;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AddressStructBuilder() {
    AddressStruct._initializeBuilder(this);
  }

  AddressStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _line1 = $v.line1;
      _line2 = $v.line2;
      _pincode = $v.pincode;
      _geocordinate = $v.geocordinate;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressStruct;
  }

  @override
  void update(void Function(AddressStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressStruct build() {
    final _$result = _$v ??
        new _$AddressStruct._(
            line1: line1,
            line2: line2,
            pincode: pincode,
            geocordinate: geocordinate,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, 'AddressStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
