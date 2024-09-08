// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfirmRequest {
  String get value => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String get requestId => throw _privateConstructorUsedError;

  /// Serializes this ConfirmRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmRequestCopyWith<ConfirmRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRequestCopyWith<$Res> {
  factory $ConfirmRequestCopyWith(
          ConfirmRequest value, $Res Function(ConfirmRequest) then) =
      _$ConfirmRequestCopyWithImpl<$Res, ConfirmRequest>;
  @useResult
  $Res call(
      {String value,
      @JsonKey(includeIfNull: false) String? username,
      @JsonKey(includeToJson: false) String requestId});
}

/// @nodoc
class _$ConfirmRequestCopyWithImpl<$Res, $Val extends ConfirmRequest>
    implements $ConfirmRequestCopyWith<$Res> {
  _$ConfirmRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? username = freezed,
    Object? requestId = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmRequestImplCopyWith<$Res>
    implements $ConfirmRequestCopyWith<$Res> {
  factory _$$ConfirmRequestImplCopyWith(_$ConfirmRequestImpl value,
          $Res Function(_$ConfirmRequestImpl) then) =
      __$$ConfirmRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value,
      @JsonKey(includeIfNull: false) String? username,
      @JsonKey(includeToJson: false) String requestId});
}

/// @nodoc
class __$$ConfirmRequestImplCopyWithImpl<$Res>
    extends _$ConfirmRequestCopyWithImpl<$Res, _$ConfirmRequestImpl>
    implements _$$ConfirmRequestImplCopyWith<$Res> {
  __$$ConfirmRequestImplCopyWithImpl(
      _$ConfirmRequestImpl _value, $Res Function(_$ConfirmRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? username = freezed,
    Object? requestId = null,
  }) {
    return _then(_$ConfirmRequestImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$ConfirmRequestImpl implements _ConfirmRequest {
  _$ConfirmRequestImpl(
      {required this.value,
      @JsonKey(includeIfNull: false) this.username,
      @JsonKey(includeToJson: false) required this.requestId});

  @override
  final String value;
  @override
  @JsonKey(includeIfNull: false)
  final String? username;
  @override
  @JsonKey(includeToJson: false)
  final String requestId;

  @override
  String toString() {
    return 'ConfirmRequest(value: $value, username: $username, requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmRequestImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, username, requestId);

  /// Create a copy of ConfirmRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmRequestImplCopyWith<_$ConfirmRequestImpl> get copyWith =>
      __$$ConfirmRequestImplCopyWithImpl<_$ConfirmRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmRequestImplToJson(
      this,
    );
  }
}

abstract class _ConfirmRequest implements ConfirmRequest {
  factory _ConfirmRequest(
          {required final String value,
          @JsonKey(includeIfNull: false) final String? username,
          @JsonKey(includeToJson: false) required final String requestId}) =
      _$ConfirmRequestImpl;

  @override
  String get value;
  @override
  @JsonKey(includeIfNull: false)
  String? get username;
  @override
  @JsonKey(includeToJson: false)
  String get requestId;

  /// Create a copy of ConfirmRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmRequestImplCopyWith<_$ConfirmRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
