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
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  ClientCidData? get parent => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  List<ClientAdressDto>? get deliveryaddressSet =>
      throw _privateConstructorUsedError;

  /// Serializes this ClientInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {int? id,
      String name,
      List<String>? phoneNumbers,
      ClientCidData? parent,
      String? region,
      List<ClientAdressDto>? deliveryaddressSet});

  $ClientCidDataCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ClientInfoResponseCopyWithImpl<$Res, $Val extends ClientInfoResponse>
    implements $ClientInfoResponseCopyWith<$Res> {
  _$ClientInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? phoneNumbers = freezed,
    Object? parent = freezed,
    Object? region = freezed,
    Object? deliveryaddressSet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ClientCidData?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryaddressSet: freezed == deliveryaddressSet
          ? _value.deliveryaddressSet
          : deliveryaddressSet // ignore: cast_nullable_to_non_nullable
              as List<ClientAdressDto>?,
    ) as $Val);
  }

  /// Create a copy of ClientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClientCidDataCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ClientCidDataCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
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
      {int? id,
      String name,
      List<String>? phoneNumbers,
      ClientCidData? parent,
      String? region,
      List<ClientAdressDto>? deliveryaddressSet});

  @override
  $ClientCidDataCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$ClientInfoResponseImplCopyWithImpl<$Res>
    extends _$ClientInfoResponseCopyWithImpl<$Res, _$ClientInfoResponseImpl>
    implements _$$ClientInfoResponseImplCopyWith<$Res> {
  __$$ClientInfoResponseImplCopyWithImpl(_$ClientInfoResponseImpl _value,
      $Res Function(_$ClientInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? phoneNumbers = freezed,
    Object? parent = freezed,
    Object? region = freezed,
    Object? deliveryaddressSet = freezed,
  }) {
    return _then(_$ClientInfoResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as ClientCidData?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryaddressSet: freezed == deliveryaddressSet
          ? _value._deliveryaddressSet
          : deliveryaddressSet // ignore: cast_nullable_to_non_nullable
              as List<ClientAdressDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientInfoResponseImpl implements _ClientInfoResponse {
  _$ClientInfoResponseImpl(
      {this.id,
      required this.name,
      final List<String>? phoneNumbers,
      this.parent,
      this.region,
      final List<ClientAdressDto>? deliveryaddressSet})
      : _phoneNumbers = phoneNumbers,
        _deliveryaddressSet = deliveryaddressSet;

  factory _$ClientInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientInfoResponseImplFromJson(json);

  @override
  final int? id;
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
  final ClientCidData? parent;
  @override
  final String? region;
  final List<ClientAdressDto>? _deliveryaddressSet;
  @override
  List<ClientAdressDto>? get deliveryaddressSet {
    final value = _deliveryaddressSet;
    if (value == null) return null;
    if (_deliveryaddressSet is EqualUnmodifiableListView)
      return _deliveryaddressSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClientInfoResponse(id: $id, name: $name, phoneNumbers: $phoneNumbers, parent: $parent, region: $region, deliveryaddressSet: $deliveryaddressSet)';
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
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality()
                .equals(other._deliveryaddressSet, _deliveryaddressSet));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_phoneNumbers),
      parent,
      region,
      const DeepCollectionEquality().hash(_deliveryaddressSet));

  /// Create a copy of ClientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
          {final int? id,
          required final String name,
          final List<String>? phoneNumbers,
          final ClientCidData? parent,
          final String? region,
          final List<ClientAdressDto>? deliveryaddressSet}) =
      _$ClientInfoResponseImpl;

  factory _ClientInfoResponse.fromJson(Map<String, dynamic> json) =
      _$ClientInfoResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;
  @override
  List<String>? get phoneNumbers;
  @override
  ClientCidData? get parent;
  @override
  String? get region;
  @override
  List<ClientAdressDto>? get deliveryaddressSet;

  /// Create a copy of ClientInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientInfoResponseImplCopyWith<_$ClientInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
