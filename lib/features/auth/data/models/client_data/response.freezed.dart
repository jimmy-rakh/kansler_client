// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientDataResponse _$ClientDataResponseFromJson(Map<String, dynamic> json) {
  return _ClientDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ClientDataResponse {
  String? get inn => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientDataResponseCopyWith<ClientDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDataResponseCopyWith<$Res> {
  factory $ClientDataResponseCopyWith(
          ClientDataResponse value, $Res Function(ClientDataResponse) then) =
      _$ClientDataResponseCopyWithImpl<$Res, ClientDataResponse>;
  @useResult
  $Res call(
      {String? inn,
      String? fullName,
      String? name,
      List<String>? phoneNumbers});
}

/// @nodoc
class _$ClientDataResponseCopyWithImpl<$Res, $Val extends ClientDataResponse>
    implements $ClientDataResponseCopyWith<$Res> {
  _$ClientDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inn = freezed,
    Object? fullName = freezed,
    Object? name = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_value.copyWith(
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientDataResponseImplCopyWith<$Res>
    implements $ClientDataResponseCopyWith<$Res> {
  factory _$$ClientDataResponseImplCopyWith(_$ClientDataResponseImpl value,
          $Res Function(_$ClientDataResponseImpl) then) =
      __$$ClientDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? inn,
      String? fullName,
      String? name,
      List<String>? phoneNumbers});
}

/// @nodoc
class __$$ClientDataResponseImplCopyWithImpl<$Res>
    extends _$ClientDataResponseCopyWithImpl<$Res, _$ClientDataResponseImpl>
    implements _$$ClientDataResponseImplCopyWith<$Res> {
  __$$ClientDataResponseImplCopyWithImpl(_$ClientDataResponseImpl _value,
      $Res Function(_$ClientDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inn = freezed,
    Object? fullName = freezed,
    Object? name = freezed,
    Object? phoneNumbers = freezed,
  }) {
    return _then(_$ClientDataResponseImpl(
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientDataResponseImpl extends _ClientDataResponse {
  _$ClientDataResponseImpl(
      {this.inn,
      this.fullName,
      this.name,
      required final List<String>? phoneNumbers})
      : _phoneNumbers = phoneNumbers,
        super._();

  factory _$ClientDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientDataResponseImplFromJson(json);

  @override
  final String? inn;
  @override
  final String? fullName;
  @override
  final String? name;
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
  String toString() {
    return 'ClientDataResponse(inn: $inn, fullName: $fullName, name: $name, phoneNumbers: $phoneNumbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientDataResponseImpl &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, inn, fullName, name,
      const DeepCollectionEquality().hash(_phoneNumbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientDataResponseImplCopyWith<_$ClientDataResponseImpl> get copyWith =>
      __$$ClientDataResponseImplCopyWithImpl<_$ClientDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientDataResponseImplToJson(
      this,
    );
  }
}

abstract class _ClientDataResponse extends ClientDataResponse {
  factory _ClientDataResponse(
      {final String? inn,
      final String? fullName,
      final String? name,
      required final List<String>? phoneNumbers}) = _$ClientDataResponseImpl;
  _ClientDataResponse._() : super._();

  factory _ClientDataResponse.fromJson(Map<String, dynamic> json) =
      _$ClientDataResponseImpl.fromJson;

  @override
  String? get inn;
  @override
  String? get fullName;
  @override
  String? get name;
  @override
  List<String>? get phoneNumbers;
  @override
  @JsonKey(ignore: true)
  _$$ClientDataResponseImplCopyWith<_$ClientDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
