// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConfirmCodeState {
  dynamic get status => throw _privateConstructorUsedError;
  int get leftSeconds => throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;
  SendCodeRequest? get request => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmCodeStateCopyWith<ConfirmCodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeStateCopyWith<$Res> {
  factory $ConfirmCodeStateCopyWith(
          ConfirmCodeState value, $Res Function(ConfirmCodeState) then) =
      _$ConfirmCodeStateCopyWithImpl<$Res, ConfirmCodeState>;
  @useResult
  $Res call(
      {dynamic status,
      int leftSeconds,
      String? requestId,
      SendCodeRequest? request});

  $SendCodeRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$ConfirmCodeStateCopyWithImpl<$Res, $Val extends ConfirmCodeState>
    implements $ConfirmCodeStateCopyWith<$Res> {
  _$ConfirmCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? leftSeconds = null,
    Object? requestId = freezed,
    Object? request = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      leftSeconds: null == leftSeconds
          ? _value.leftSeconds
          : leftSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SendCodeRequest?,
    ) as $Val);
  }

  /// Create a copy of ConfirmCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SendCodeRequestCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $SendCodeRequestCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ConfirmCodeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic status,
      int leftSeconds,
      String? requestId,
      SendCodeRequest? request});

  @override
  $SendCodeRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ConfirmCodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmCodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? leftSeconds = null,
    Object? requestId = freezed,
    Object? request = freezed,
  }) {
    return _then(_$InitialImpl(
      status: freezed == status ? _value.status! : status,
      leftSeconds: null == leftSeconds
          ? _value.leftSeconds
          : leftSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SendCodeRequest?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = ConfirmCodeStatus.initial,
      this.leftSeconds = 59,
      this.requestId,
      this.request});

  @override
  @JsonKey()
  final dynamic status;
  @override
  @JsonKey()
  final int leftSeconds;
  @override
  final String? requestId;
  @override
  final SendCodeRequest? request;

  @override
  String toString() {
    return 'ConfirmCodeState(status: $status, leftSeconds: $leftSeconds, requestId: $requestId, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.status, status) &&
            (identical(other.leftSeconds, leftSeconds) ||
                other.leftSeconds == leftSeconds) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      leftSeconds,
      requestId,
      request);

  /// Create a copy of ConfirmCodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ConfirmCodeState {
  const factory _Initial(
      {final dynamic status,
      final int leftSeconds,
      final String? requestId,
      final SendCodeRequest? request}) = _$InitialImpl;

  @override
  dynamic get status;
  @override
  int get leftSeconds;
  @override
  String? get requestId;
  @override
  SendCodeRequest? get request;

  /// Create a copy of ConfirmCodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConfirmCodeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, SendCodeRequest request) init,
    required TResult Function(String phone, String requestId) confirm,
    required TResult Function(int seconds) updateCountdown,
    required TResult Function() resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, SendCodeRequest request)? init,
    TResult? Function(String phone, String requestId)? confirm,
    TResult? Function(int seconds)? updateCountdown,
    TResult? Function()? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, SendCodeRequest request)? init,
    TResult Function(String phone, String requestId)? confirm,
    TResult Function(int seconds)? updateCountdown,
    TResult Function()? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Confirm value) confirm,
    required TResult Function(_UpdateCountdown value) updateCountdown,
    required TResult Function(_Resend value) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Confirm value)? confirm,
    TResult? Function(_UpdateCountdown value)? updateCountdown,
    TResult? Function(_Resend value)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Confirm value)? confirm,
    TResult Function(_UpdateCountdown value)? updateCountdown,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmCodeEventCopyWith<$Res> {
  factory $ConfirmCodeEventCopyWith(
          ConfirmCodeEvent value, $Res Function(ConfirmCodeEvent) then) =
      _$ConfirmCodeEventCopyWithImpl<$Res, ConfirmCodeEvent>;
}

/// @nodoc
class _$ConfirmCodeEventCopyWithImpl<$Res, $Val extends ConfirmCodeEvent>
    implements $ConfirmCodeEventCopyWith<$Res> {
  _$ConfirmCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, SendCodeRequest request});

  $SendCodeRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ConfirmCodeEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? request = null,
  }) {
    return _then(_$InitImpl(
      null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SendCodeRequest,
    ));
  }

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SendCodeRequestCopyWith<$Res> get request {
    return $SendCodeRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.requestId, this.request);

  @override
  final String requestId;
  @override
  final SendCodeRequest request;

  @override
  String toString() {
    return 'ConfirmCodeEvent.init(requestId: $requestId, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, request);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, SendCodeRequest request) init,
    required TResult Function(String phone, String requestId) confirm,
    required TResult Function(int seconds) updateCountdown,
    required TResult Function() resend,
  }) {
    return init(requestId, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, SendCodeRequest request)? init,
    TResult? Function(String phone, String requestId)? confirm,
    TResult? Function(int seconds)? updateCountdown,
    TResult? Function()? resend,
  }) {
    return init?.call(requestId, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, SendCodeRequest request)? init,
    TResult Function(String phone, String requestId)? confirm,
    TResult Function(int seconds)? updateCountdown,
    TResult Function()? resend,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(requestId, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Confirm value) confirm,
    required TResult Function(_UpdateCountdown value) updateCountdown,
    required TResult Function(_Resend value) resend,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Confirm value)? confirm,
    TResult? Function(_UpdateCountdown value)? updateCountdown,
    TResult? Function(_Resend value)? resend,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Confirm value)? confirm,
    TResult Function(_UpdateCountdown value)? updateCountdown,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ConfirmCodeEvent {
  const factory _Init(final String requestId, final SendCodeRequest request) =
      _$InitImpl;

  String get requestId;
  SendCodeRequest get request;

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmImplCopyWith<$Res> {
  factory _$$ConfirmImplCopyWith(
          _$ConfirmImpl value, $Res Function(_$ConfirmImpl) then) =
      __$$ConfirmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String requestId});
}

/// @nodoc
class __$$ConfirmImplCopyWithImpl<$Res>
    extends _$ConfirmCodeEventCopyWithImpl<$Res, _$ConfirmImpl>
    implements _$$ConfirmImplCopyWith<$Res> {
  __$$ConfirmImplCopyWithImpl(
      _$ConfirmImpl _value, $Res Function(_$ConfirmImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? requestId = null,
  }) {
    return _then(_$ConfirmImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmImpl implements _Confirm {
  const _$ConfirmImpl(this.phone, this.requestId);

  @override
  final String phone;
  @override
  final String requestId;

  @override
  String toString() {
    return 'ConfirmCodeEvent.confirm(phone: $phone, requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, requestId);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmImplCopyWith<_$ConfirmImpl> get copyWith =>
      __$$ConfirmImplCopyWithImpl<_$ConfirmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, SendCodeRequest request) init,
    required TResult Function(String phone, String requestId) confirm,
    required TResult Function(int seconds) updateCountdown,
    required TResult Function() resend,
  }) {
    return confirm(phone, requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, SendCodeRequest request)? init,
    TResult? Function(String phone, String requestId)? confirm,
    TResult? Function(int seconds)? updateCountdown,
    TResult? Function()? resend,
  }) {
    return confirm?.call(phone, requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, SendCodeRequest request)? init,
    TResult Function(String phone, String requestId)? confirm,
    TResult Function(int seconds)? updateCountdown,
    TResult Function()? resend,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(phone, requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Confirm value) confirm,
    required TResult Function(_UpdateCountdown value) updateCountdown,
    required TResult Function(_Resend value) resend,
  }) {
    return confirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Confirm value)? confirm,
    TResult? Function(_UpdateCountdown value)? updateCountdown,
    TResult? Function(_Resend value)? resend,
  }) {
    return confirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Confirm value)? confirm,
    TResult Function(_UpdateCountdown value)? updateCountdown,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(this);
    }
    return orElse();
  }
}

abstract class _Confirm implements ConfirmCodeEvent {
  const factory _Confirm(final String phone, final String requestId) =
      _$ConfirmImpl;

  String get phone;
  String get requestId;

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmImplCopyWith<_$ConfirmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCountdownImplCopyWith<$Res> {
  factory _$$UpdateCountdownImplCopyWith(_$UpdateCountdownImpl value,
          $Res Function(_$UpdateCountdownImpl) then) =
      __$$UpdateCountdownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int seconds});
}

/// @nodoc
class __$$UpdateCountdownImplCopyWithImpl<$Res>
    extends _$ConfirmCodeEventCopyWithImpl<$Res, _$UpdateCountdownImpl>
    implements _$$UpdateCountdownImplCopyWith<$Res> {
  __$$UpdateCountdownImplCopyWithImpl(
      _$UpdateCountdownImpl _value, $Res Function(_$UpdateCountdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
  }) {
    return _then(_$UpdateCountdownImpl(
      null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCountdownImpl implements _UpdateCountdown {
  const _$UpdateCountdownImpl(this.seconds);

  @override
  final int seconds;

  @override
  String toString() {
    return 'ConfirmCodeEvent.updateCountdown(seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCountdownImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seconds);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCountdownImplCopyWith<_$UpdateCountdownImpl> get copyWith =>
      __$$UpdateCountdownImplCopyWithImpl<_$UpdateCountdownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, SendCodeRequest request) init,
    required TResult Function(String phone, String requestId) confirm,
    required TResult Function(int seconds) updateCountdown,
    required TResult Function() resend,
  }) {
    return updateCountdown(seconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, SendCodeRequest request)? init,
    TResult? Function(String phone, String requestId)? confirm,
    TResult? Function(int seconds)? updateCountdown,
    TResult? Function()? resend,
  }) {
    return updateCountdown?.call(seconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, SendCodeRequest request)? init,
    TResult Function(String phone, String requestId)? confirm,
    TResult Function(int seconds)? updateCountdown,
    TResult Function()? resend,
    required TResult orElse(),
  }) {
    if (updateCountdown != null) {
      return updateCountdown(seconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Confirm value) confirm,
    required TResult Function(_UpdateCountdown value) updateCountdown,
    required TResult Function(_Resend value) resend,
  }) {
    return updateCountdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Confirm value)? confirm,
    TResult? Function(_UpdateCountdown value)? updateCountdown,
    TResult? Function(_Resend value)? resend,
  }) {
    return updateCountdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Confirm value)? confirm,
    TResult Function(_UpdateCountdown value)? updateCountdown,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (updateCountdown != null) {
      return updateCountdown(this);
    }
    return orElse();
  }
}

abstract class _UpdateCountdown implements ConfirmCodeEvent {
  const factory _UpdateCountdown(final int seconds) = _$UpdateCountdownImpl;

  int get seconds;

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCountdownImplCopyWith<_$UpdateCountdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendImplCopyWith<$Res> {
  factory _$$ResendImplCopyWith(
          _$ResendImpl value, $Res Function(_$ResendImpl) then) =
      __$$ResendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendImplCopyWithImpl<$Res>
    extends _$ConfirmCodeEventCopyWithImpl<$Res, _$ResendImpl>
    implements _$$ResendImplCopyWith<$Res> {
  __$$ResendImplCopyWithImpl(
      _$ResendImpl _value, $Res Function(_$ResendImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmCodeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResendImpl implements _Resend {
  const _$ResendImpl();

  @override
  String toString() {
    return 'ConfirmCodeEvent.resend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, SendCodeRequest request) init,
    required TResult Function(String phone, String requestId) confirm,
    required TResult Function(int seconds) updateCountdown,
    required TResult Function() resend,
  }) {
    return resend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, SendCodeRequest request)? init,
    TResult? Function(String phone, String requestId)? confirm,
    TResult? Function(int seconds)? updateCountdown,
    TResult? Function()? resend,
  }) {
    return resend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, SendCodeRequest request)? init,
    TResult Function(String phone, String requestId)? confirm,
    TResult Function(int seconds)? updateCountdown,
    TResult Function()? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Confirm value) confirm,
    required TResult Function(_UpdateCountdown value) updateCountdown,
    required TResult Function(_Resend value) resend,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Confirm value)? confirm,
    TResult? Function(_UpdateCountdown value)? updateCountdown,
    TResult? Function(_Resend value)? resend,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Confirm value)? confirm,
    TResult Function(_UpdateCountdown value)? updateCountdown,
    TResult Function(_Resend value)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements ConfirmCodeEvent {
  const factory _Resend() = _$ResendImpl;
}
