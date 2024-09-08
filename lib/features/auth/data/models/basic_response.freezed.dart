// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicResponse _$BasicResponseFromJson(Map<String, dynamic> json) {
  return _BasicResponse.fromJson(json);
}

/// @nodoc
mixin _$BasicResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicResponseCopyWith<BasicResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicResponseCopyWith<$Res> {
  factory $BasicResponseCopyWith(
          BasicResponse value, $Res Function(BasicResponse) then) =
      _$BasicResponseCopyWithImpl<$Res, BasicResponse>;
  @useResult
  $Res call({bool success, String? errorMessage});
}

/// @nodoc
class _$BasicResponseCopyWithImpl<$Res, $Val extends BasicResponse>
    implements $BasicResponseCopyWith<$Res> {
  _$BasicResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicResponseImplCopyWith<$Res>
    implements $BasicResponseCopyWith<$Res> {
  factory _$$BasicResponseImplCopyWith(
          _$BasicResponseImpl value, $Res Function(_$BasicResponseImpl) then) =
      __$$BasicResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? errorMessage});
}

/// @nodoc
class __$$BasicResponseImplCopyWithImpl<$Res>
    extends _$BasicResponseCopyWithImpl<$Res, _$BasicResponseImpl>
    implements _$$BasicResponseImplCopyWith<$Res> {
  __$$BasicResponseImplCopyWithImpl(
      _$BasicResponseImpl _value, $Res Function(_$BasicResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BasicResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$BasicResponseImpl implements _BasicResponse {
  _$BasicResponseImpl({required this.success, this.errorMessage});

  factory _$BasicResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BasicResponse(success: $success, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicResponseImplCopyWith<_$BasicResponseImpl> get copyWith =>
      __$$BasicResponseImplCopyWithImpl<_$BasicResponseImpl>(this, _$identity);
}

abstract class _BasicResponse implements BasicResponse {
  factory _BasicResponse(
      {required final bool success,
      final String? errorMessage}) = _$BasicResponseImpl;

  factory _BasicResponse.fromJson(Map<String, dynamic> json) =
      _$BasicResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BasicResponseImplCopyWith<_$BasicResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
