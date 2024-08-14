// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'limits_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LimitsState {
  LimitsStatus get status => throw _privateConstructorUsedError;
  List<LimitsDto> get limits => throw _privateConstructorUsedError;
  List<BonusDto> get bonuses => throw _privateConstructorUsedError;

  /// Create a copy of LimitsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LimitsStateCopyWith<LimitsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitsStateCopyWith<$Res> {
  factory $LimitsStateCopyWith(
          LimitsState value, $Res Function(LimitsState) then) =
      _$LimitsStateCopyWithImpl<$Res, LimitsState>;
  @useResult
  $Res call(
      {LimitsStatus status, List<LimitsDto> limits, List<BonusDto> bonuses});
}

/// @nodoc
class _$LimitsStateCopyWithImpl<$Res, $Val extends LimitsState>
    implements $LimitsStateCopyWith<$Res> {
  _$LimitsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LimitsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? limits = null,
    Object? bonuses = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LimitsStatus,
      limits: null == limits
          ? _value.limits
          : limits // ignore: cast_nullable_to_non_nullable
              as List<LimitsDto>,
      bonuses: null == bonuses
          ? _value.bonuses
          : bonuses // ignore: cast_nullable_to_non_nullable
              as List<BonusDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LimitsStateImplCopyWith<$Res>
    implements $LimitsStateCopyWith<$Res> {
  factory _$$LimitsStateImplCopyWith(
          _$LimitsStateImpl value, $Res Function(_$LimitsStateImpl) then) =
      __$$LimitsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LimitsStatus status, List<LimitsDto> limits, List<BonusDto> bonuses});
}

/// @nodoc
class __$$LimitsStateImplCopyWithImpl<$Res>
    extends _$LimitsStateCopyWithImpl<$Res, _$LimitsStateImpl>
    implements _$$LimitsStateImplCopyWith<$Res> {
  __$$LimitsStateImplCopyWithImpl(
      _$LimitsStateImpl _value, $Res Function(_$LimitsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LimitsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? limits = null,
    Object? bonuses = null,
  }) {
    return _then(_$LimitsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LimitsStatus,
      limits: null == limits
          ? _value._limits
          : limits // ignore: cast_nullable_to_non_nullable
              as List<LimitsDto>,
      bonuses: null == bonuses
          ? _value._bonuses
          : bonuses // ignore: cast_nullable_to_non_nullable
              as List<BonusDto>,
    ));
  }
}

/// @nodoc

class _$LimitsStateImpl implements _LimitsState {
  const _$LimitsStateImpl(
      {this.status = LimitsStatus.loading,
      final List<LimitsDto> limits = const [],
      final List<BonusDto> bonuses = const []})
      : _limits = limits,
        _bonuses = bonuses;

  @override
  @JsonKey()
  final LimitsStatus status;
  final List<LimitsDto> _limits;
  @override
  @JsonKey()
  List<LimitsDto> get limits {
    if (_limits is EqualUnmodifiableListView) return _limits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_limits);
  }

  final List<BonusDto> _bonuses;
  @override
  @JsonKey()
  List<BonusDto> get bonuses {
    if (_bonuses is EqualUnmodifiableListView) return _bonuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bonuses);
  }

  @override
  String toString() {
    return 'LimitsState(status: $status, limits: $limits, bonuses: $bonuses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LimitsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._limits, _limits) &&
            const DeepCollectionEquality().equals(other._bonuses, _bonuses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_limits),
      const DeepCollectionEquality().hash(_bonuses));

  /// Create a copy of LimitsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LimitsStateImplCopyWith<_$LimitsStateImpl> get copyWith =>
      __$$LimitsStateImplCopyWithImpl<_$LimitsStateImpl>(this, _$identity);
}

abstract class _LimitsState implements LimitsState {
  const factory _LimitsState(
      {final LimitsStatus status,
      final List<LimitsDto> limits,
      final List<BonusDto> bonuses}) = _$LimitsStateImpl;

  @override
  LimitsStatus get status;
  @override
  List<LimitsDto> get limits;
  @override
  List<BonusDto> get bonuses;

  /// Create a copy of LimitsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LimitsStateImplCopyWith<_$LimitsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
