// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmCodeRequest _$ConfirmCodeRequestFromJson(Map<String, dynamic> json) {
  return _ConfirmCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmCodeRequest {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmCodeRequestCopyWith<ConfirmCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeRequestCopyWith<$Res> {
  factory $ConfirmCodeRequestCopyWith(
          ConfirmCodeRequest value, $Res Function(ConfirmCodeRequest) then) =
      _$ConfirmCodeRequestCopyWithImpl<$Res, ConfirmCodeRequest>;
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class _$ConfirmCodeRequestCopyWithImpl<$Res, $Val extends ConfirmCodeRequest>
    implements $ConfirmCodeRequestCopyWith<$Res> {
  _$ConfirmCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmCodeRequestImplCopyWith<$Res>
    implements $ConfirmCodeRequestCopyWith<$Res> {
  factory _$$ConfirmCodeRequestImplCopyWith(_$ConfirmCodeRequestImpl value,
          $Res Function(_$ConfirmCodeRequestImpl) then) =
      __$$ConfirmCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$ConfirmCodeRequestImplCopyWithImpl<$Res>
    extends _$ConfirmCodeRequestCopyWithImpl<$Res, _$ConfirmCodeRequestImpl>
    implements _$$ConfirmCodeRequestImplCopyWith<$Res> {
  __$$ConfirmCodeRequestImplCopyWithImpl(_$ConfirmCodeRequestImpl _value,
      $Res Function(_$ConfirmCodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$ConfirmCodeRequestImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmCodeRequestImpl implements _ConfirmCodeRequest {
  _$ConfirmCodeRequestImpl({required this.phoneNumber, required this.code});

  factory _$ConfirmCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmCodeRequestImplFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmCodeRequest(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmCodeRequestImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmCodeRequestImplCopyWith<_$ConfirmCodeRequestImpl> get copyWith =>
      __$$ConfirmCodeRequestImplCopyWithImpl<_$ConfirmCodeRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfirmCodeRequest implements ConfirmCodeRequest {
  factory _ConfirmCodeRequest(
      {required final String phoneNumber,
      required final String code}) = _$ConfirmCodeRequestImpl;

  factory _ConfirmCodeRequest.fromJson(Map<String, dynamic> json) =
      _$ConfirmCodeRequestImpl.fromJson;

  @override
  String get phoneNumber;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmCodeRequestImplCopyWith<_$ConfirmCodeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
