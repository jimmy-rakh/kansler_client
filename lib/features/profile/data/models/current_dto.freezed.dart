// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentDto _$CurrentDtoFromJson(Map<String, dynamic> json) {
  return _CurrentDto.fromJson(json);
}

/// @nodoc
mixin _$CurrentDto {
  int get id => throw _privateConstructorUsedError;
  String? get cid => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  CompanyDto? get company => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this CurrentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentDtoCopyWith<CurrentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentDtoCopyWith<$Res> {
  factory $CurrentDtoCopyWith(
          CurrentDto value, $Res Function(CurrentDto) then) =
      _$CurrentDtoCopyWithImpl<$Res, CurrentDto>;
  @useResult
  $Res call(
      {int id,
      String? cid,
      String username,
      CompanyDto? company,
      String? name,
      String? latitude,
      String? longitude,
      String? phoneNumber});

  $CompanyDtoCopyWith<$Res>? get company;
}

/// @nodoc
class _$CurrentDtoCopyWithImpl<$Res, $Val extends CurrentDto>
    implements $CurrentDtoCopyWith<$Res> {
  _$CurrentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cid = freezed,
    Object? username = null,
    Object? company = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CurrentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyDtoCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyDtoCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentDtoImplCopyWith<$Res>
    implements $CurrentDtoCopyWith<$Res> {
  factory _$$CurrentDtoImplCopyWith(
          _$CurrentDtoImpl value, $Res Function(_$CurrentDtoImpl) then) =
      __$$CurrentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? cid,
      String username,
      CompanyDto? company,
      String? name,
      String? latitude,
      String? longitude,
      String? phoneNumber});

  @override
  $CompanyDtoCopyWith<$Res>? get company;
}

/// @nodoc
class __$$CurrentDtoImplCopyWithImpl<$Res>
    extends _$CurrentDtoCopyWithImpl<$Res, _$CurrentDtoImpl>
    implements _$$CurrentDtoImplCopyWith<$Res> {
  __$$CurrentDtoImplCopyWithImpl(
      _$CurrentDtoImpl _value, $Res Function(_$CurrentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cid = freezed,
    Object? username = null,
    Object? company = freezed,
    Object? name = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$CurrentDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cid: freezed == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDto?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentDtoImpl implements _CurrentDto {
  _$CurrentDtoImpl(
      {required this.id,
      this.cid,
      required this.username,
      this.company,
      this.name,
      this.latitude,
      this.longitude,
      this.phoneNumber});

  factory _$CurrentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String? cid;
  @override
  final String username;
  @override
  final CompanyDto? company;
  @override
  final String? name;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'CurrentDto(id: $id, cid: $cid, username: $username, company: $company, name: $name, latitude: $latitude, longitude: $longitude, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, cid, username, company, name,
      latitude, longitude, phoneNumber);

  /// Create a copy of CurrentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentDtoImplCopyWith<_$CurrentDtoImpl> get copyWith =>
      __$$CurrentDtoImplCopyWithImpl<_$CurrentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentDtoImplToJson(
      this,
    );
  }
}

abstract class _CurrentDto implements CurrentDto {
  factory _CurrentDto(
      {required final int id,
      final String? cid,
      required final String username,
      final CompanyDto? company,
      final String? name,
      final String? latitude,
      final String? longitude,
      final String? phoneNumber}) = _$CurrentDtoImpl;

  factory _CurrentDto.fromJson(Map<String, dynamic> json) =
      _$CurrentDtoImpl.fromJson;

  @override
  int get id;
  @override
  String? get cid;
  @override
  String get username;
  @override
  CompanyDto? get company;
  @override
  String? get name;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  String? get phoneNumber;

  /// Create a copy of CurrentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentDtoImplCopyWith<_$CurrentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
