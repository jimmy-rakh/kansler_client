// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientInfoResponse _$ClientInfoResponseFromJson(Map<String, dynamic> json) {
  return _ClientInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$ClientInfoResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  ClientCidData get parent => throw _privateConstructorUsedError;
  ClientAdressDto? get deliveryaddressSet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientInfoResponseCopyWith<ClientInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientInfoResponseCopyWith<$Res> {
  factory $ClientInfoResponseCopyWith(
          ClientInfoResponse value, $Res Function(ClientInfoResponse) then) =
      _$ClientInfoResponseCopyWithImpl<$Res, ClientInfoResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<String>? phoneNumbers,
      ClientCidData parent,
      ClientAdressDto? deliveryaddressSet});

  $ClientCidDataCopyWith<$Res> get parent;
  $ClientAdressDtoCopyWith<$Res>? get deliveryaddressSet;
}

/// @nodoc
class _$ClientInfoResponseCopyWithImpl<$Res, $Val extends ClientInfoResponse>
    implements $ClientInfoResponseCopyWith<$Res> {
  _$ClientInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumbers = freezed,
    Object? parent = null,
    Object? deliveryaddressSet = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ClientCidData,
      deliveryaddressSet: freezed == deliveryaddressSet
          ? _value.deliveryaddressSet
          : deliveryaddressSet // ignore: cast_nullable_to_non_nullable
              as ClientAdressDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientCidDataCopyWith<$Res> get parent {
    return $ClientCidDataCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientAdressDtoCopyWith<$Res>? get deliveryaddressSet {
    if (_value.deliveryaddressSet == null) {
      return null;
    }

    return $ClientAdressDtoCopyWith<$Res>(_value.deliveryaddressSet!, (value) {
      return _then(_value.copyWith(deliveryaddressSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientInfoResponseImplCopyWith<$Res>
    implements $ClientInfoResponseCopyWith<$Res> {
  factory _$$ClientInfoResponseImplCopyWith(_$ClientInfoResponseImpl value,
          $Res Function(_$ClientInfoResponseImpl) then) =
      __$$ClientInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<String>? phoneNumbers,
      ClientCidData parent,
      ClientAdressDto? deliveryaddressSet});

  @override
  $ClientCidDataCopyWith<$Res> get parent;
  @override
  $ClientAdressDtoCopyWith<$Res>? get deliveryaddressSet;
}

/// @nodoc
class __$$ClientInfoResponseImplCopyWithImpl<$Res>
    extends _$ClientInfoResponseCopyWithImpl<$Res, _$ClientInfoResponseImpl>
    implements _$$ClientInfoResponseImplCopyWith<$Res> {
  __$$ClientInfoResponseImplCopyWithImpl(_$ClientInfoResponseImpl _value,
      $Res Function(_$ClientInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumbers = freezed,
    Object? parent = null,
    Object? deliveryaddressSet = freezed,
  }) {
    return _then(_$ClientInfoResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ClientCidData,
      deliveryaddressSet: freezed == deliveryaddressSet
          ? _value.deliveryaddressSet
          : deliveryaddressSet // ignore: cast_nullable_to_non_nullable
              as ClientAdressDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientInfoResponseImpl implements _ClientInfoResponse {
  _$ClientInfoResponseImpl(
      {required this.id,
      required this.name,
      final List<String>? phoneNumbers,
      required this.parent,
      this.deliveryaddressSet})
      : _phoneNumbers = phoneNumbers;

  factory _$ClientInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientInfoResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String>? _phoneNumbers;
  @override
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClientCidData parent;
  @override
  final ClientAdressDto? deliveryaddressSet;

  @override
  String toString() {
    return 'ClientInfoResponse(id: $id, name: $name, phoneNumbers: $phoneNumbers, parent: $parent, deliveryaddressSet: $deliveryaddressSet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientInfoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.deliveryaddressSet, deliveryaddressSet) ||
                other.deliveryaddressSet == deliveryaddressSet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_phoneNumbers),
      parent,
      deliveryaddressSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientInfoResponseImplCopyWith<_$ClientInfoResponseImpl> get copyWith =>
      __$$ClientInfoResponseImplCopyWithImpl<_$ClientInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _ClientInfoResponse implements ClientInfoResponse {
  factory _ClientInfoResponse(
      {required final int id,
      required final String name,
      final List<String>? phoneNumbers,
      required final ClientCidData parent,
      final ClientAdressDto? deliveryaddressSet}) = _$ClientInfoResponseImpl;

  factory _ClientInfoResponse.fromJson(Map<String, dynamic> json) =
      _$ClientInfoResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String>? get phoneNumbers;
  @override
  ClientCidData get parent;
  @override
  ClientAdressDto? get deliveryaddressSet;
  @override
  @JsonKey(ignore: true)
  _$$ClientInfoResponseImplCopyWith<_$ClientInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
