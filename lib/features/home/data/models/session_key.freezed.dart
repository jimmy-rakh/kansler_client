// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionKey _$SessionKeyFromJson(Map<String, dynamic> json) {
  return _SessionKey.fromJson(json);
}

/// @nodoc
mixin _$SessionKey {
  String? get sessionKey => throw _privateConstructorUsedError;

  /// Serializes this SessionKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionKeyCopyWith<SessionKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionKeyCopyWith<$Res> {
  factory $SessionKeyCopyWith(
          SessionKey value, $Res Function(SessionKey) then) =
      _$SessionKeyCopyWithImpl<$Res, SessionKey>;
  @useResult
  $Res call({String? sessionKey});
}

/// @nodoc
class _$SessionKeyCopyWithImpl<$Res, $Val extends SessionKey>
    implements $SessionKeyCopyWith<$Res> {
  _$SessionKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionKey = freezed,
  }) {
    return _then(_value.copyWith(
      sessionKey: freezed == sessionKey
          ? _value.sessionKey
          : sessionKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionKeyImplCopyWith<$Res>
    implements $SessionKeyCopyWith<$Res> {
  factory _$$SessionKeyImplCopyWith(
          _$SessionKeyImpl value, $Res Function(_$SessionKeyImpl) then) =
      __$$SessionKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionKey});
}

/// @nodoc
class __$$SessionKeyImplCopyWithImpl<$Res>
    extends _$SessionKeyCopyWithImpl<$Res, _$SessionKeyImpl>
    implements _$$SessionKeyImplCopyWith<$Res> {
  __$$SessionKeyImplCopyWithImpl(
      _$SessionKeyImpl _value, $Res Function(_$SessionKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionKey = freezed,
  }) {
    return _then(_$SessionKeyImpl(
      sessionKey: freezed == sessionKey
          ? _value.sessionKey
          : sessionKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionKeyImpl implements _SessionKey {
  _$SessionKeyImpl({this.sessionKey});

  factory _$SessionKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionKeyImplFromJson(json);

  @override
  final String? sessionKey;

  @override
  String toString() {
    return 'SessionKey(sessionKey: $sessionKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionKeyImpl &&
            (identical(other.sessionKey, sessionKey) ||
                other.sessionKey == sessionKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionKey);

  /// Create a copy of SessionKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionKeyImplCopyWith<_$SessionKeyImpl> get copyWith =>
      __$$SessionKeyImplCopyWithImpl<_$SessionKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionKeyImplToJson(
      this,
    );
  }
}

abstract class _SessionKey implements SessionKey {
  factory _SessionKey({final String? sessionKey}) = _$SessionKeyImpl;

  factory _SessionKey.fromJson(Map<String, dynamic> json) =
      _$SessionKeyImpl.fromJson;

  @override
  String? get sessionKey;

  /// Create a copy of SessionKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionKeyImplCopyWith<_$SessionKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
