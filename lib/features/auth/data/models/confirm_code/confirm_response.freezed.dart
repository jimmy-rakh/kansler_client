// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmResponse _$ConfirmResponseFromJson(Map<String, dynamic> json) {
  return _ConfirmResponse.fromJson(json);
}

/// @nodoc
mixin _$ConfirmResponse {
  String get deviceToken => throw _privateConstructorUsedError;

  /// Serializes this ConfirmResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmResponseCopyWith<ConfirmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmResponseCopyWith<$Res> {
  factory $ConfirmResponseCopyWith(
          ConfirmResponse value, $Res Function(ConfirmResponse) then) =
      _$ConfirmResponseCopyWithImpl<$Res, ConfirmResponse>;
  @useResult
  $Res call({String deviceToken});
}

/// @nodoc
class _$ConfirmResponseCopyWithImpl<$Res, $Val extends ConfirmResponse>
    implements $ConfirmResponseCopyWith<$Res> {
  _$ConfirmResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
  }) {
    return _then(_value.copyWith(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmResponseImplCopyWith<$Res>
    implements $ConfirmResponseCopyWith<$Res> {
  factory _$$ConfirmResponseImplCopyWith(_$ConfirmResponseImpl value,
          $Res Function(_$ConfirmResponseImpl) then) =
      __$$ConfirmResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceToken});
}

/// @nodoc
class __$$ConfirmResponseImplCopyWithImpl<$Res>
    extends _$ConfirmResponseCopyWithImpl<$Res, _$ConfirmResponseImpl>
    implements _$$ConfirmResponseImplCopyWith<$Res> {
  __$$ConfirmResponseImplCopyWithImpl(
      _$ConfirmResponseImpl _value, $Res Function(_$ConfirmResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
  }) {
    return _then(_$ConfirmResponseImpl(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmResponseImpl implements _ConfirmResponse {
  _$ConfirmResponseImpl({required this.deviceToken});

  factory _$ConfirmResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmResponseImplFromJson(json);

  @override
  final String deviceToken;

  @override
  String toString() {
    return 'ConfirmResponse(deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmResponseImpl &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceToken);

  /// Create a copy of ConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmResponseImplCopyWith<_$ConfirmResponseImpl> get copyWith =>
      __$$ConfirmResponseImplCopyWithImpl<_$ConfirmResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmResponseImplToJson(
      this,
    );
  }
}

abstract class _ConfirmResponse implements ConfirmResponse {
  factory _ConfirmResponse({required final String deviceToken}) =
      _$ConfirmResponseImpl;

  factory _ConfirmResponse.fromJson(Map<String, dynamic> json) =
      _$ConfirmResponseImpl.fromJson;

  @override
  String get deviceToken;

  /// Create a copy of ConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmResponseImplCopyWith<_$ConfirmResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
