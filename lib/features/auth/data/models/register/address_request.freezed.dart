// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressRequest _$AddressRequestFromJson(Map<String, dynamic> json) {
  return _AddressRequest.fromJson(json);
}

/// @nodoc
mixin _$AddressRequest {
  String get name => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;

  /// Serializes this AddressRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressRequestCopyWith<AddressRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressRequestCopyWith<$Res> {
  factory $AddressRequestCopyWith(
          AddressRequest value, $Res Function(AddressRequest) then) =
      _$AddressRequestCopyWithImpl<$Res, AddressRequest>;
  @useResult
  $Res call({String name, String latitude, String longitude});
}

/// @nodoc
class _$AddressRequestCopyWithImpl<$Res, $Val extends AddressRequest>
    implements $AddressRequestCopyWith<$Res> {
  _$AddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressRequestImplCopyWith<$Res>
    implements $AddressRequestCopyWith<$Res> {
  factory _$$AddressRequestImplCopyWith(_$AddressRequestImpl value,
          $Res Function(_$AddressRequestImpl) then) =
      __$$AddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String latitude, String longitude});
}

/// @nodoc
class __$$AddressRequestImplCopyWithImpl<$Res>
    extends _$AddressRequestCopyWithImpl<$Res, _$AddressRequestImpl>
    implements _$$AddressRequestImplCopyWith<$Res> {
  __$$AddressRequestImplCopyWithImpl(
      _$AddressRequestImpl _value, $Res Function(_$AddressRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$AddressRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressRequestImpl implements _AddressRequest {
  _$AddressRequestImpl(
      {required this.name, required this.latitude, required this.longitude});

  factory _$AddressRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String latitude;
  @override
  final String longitude;

  @override
  String toString() {
    return 'AddressRequest(name: $name, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, latitude, longitude);

  /// Create a copy of AddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressRequestImplCopyWith<_$AddressRequestImpl> get copyWith =>
      __$$AddressRequestImplCopyWithImpl<_$AddressRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressRequestImplToJson(
      this,
    );
  }
}

abstract class _AddressRequest implements AddressRequest {
  factory _AddressRequest(
      {required final String name,
      required final String latitude,
      required final String longitude}) = _$AddressRequestImpl;

  factory _AddressRequest.fromJson(Map<String, dynamic> json) =
      _$AddressRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get latitude;
  @override
  String get longitude;

  /// Create a copy of AddressRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressRequestImplCopyWith<_$AddressRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
