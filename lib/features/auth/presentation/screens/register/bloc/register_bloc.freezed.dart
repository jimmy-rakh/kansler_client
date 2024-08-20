// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState {
  RegisterStep get step => throw _privateConstructorUsedError;
  bool get showPass => throw _privateConstructorUsedError;
  bool get showRepeatedPass => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get requestId => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegisterStep step,
            bool showPass,
            bool showRepeatedPass,
            bool isLoading,
            String? requestId,
            String? error)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep step, bool showPass, bool showRepeatedPass,
            bool isLoading, String? requestId, String? error)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStep step, bool showPass, bool showRepeatedPass,
            bool isLoading, String? requestId, String? error)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {RegisterStep step,
      bool showPass,
      bool showRepeatedPass,
      bool isLoading,
      String? requestId,
      String? error});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? showPass = null,
    Object? showRepeatedPass = null,
    Object? isLoading = null,
    Object? requestId = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as RegisterStep,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
      showRepeatedPass: null == showRepeatedPass
          ? _value.showRepeatedPass
          : showRepeatedPass // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStep step,
      bool showPass,
      bool showRepeatedPass,
      bool isLoading,
      String? requestId,
      String? error});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? showPass = null,
    Object? showRepeatedPass = null,
    Object? isLoading = null,
    Object? requestId = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ReadyImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as RegisterStep,
      showPass: null == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as bool,
      showRepeatedPass: null == showRepeatedPass
          ? _value.showRepeatedPass
          : showRepeatedPass // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {this.step = RegisterStep.inputInn,
      this.showPass = true,
      this.showRepeatedPass = true,
      this.isLoading = false,
      this.requestId,
      this.error});

  @override
  @JsonKey()
  final RegisterStep step;
  @override
  @JsonKey()
  final bool showPass;
  @override
  @JsonKey()
  final bool showRepeatedPass;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? requestId;
  @override
  final String? error;

  @override
  String toString() {
    return 'RegisterState.ready(step: $step, showPass: $showPass, showRepeatedPass: $showRepeatedPass, isLoading: $isLoading, requestId: $requestId, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.showPass, showPass) ||
                other.showPass == showPass) &&
            (identical(other.showRepeatedPass, showRepeatedPass) ||
                other.showRepeatedPass == showRepeatedPass) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, step, showPass, showRepeatedPass,
      isLoading, requestId, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RegisterStep step,
            bool showPass,
            bool showRepeatedPass,
            bool isLoading,
            String? requestId,
            String? error)
        ready,
  }) {
    return ready(step, showPass, showRepeatedPass, isLoading, requestId, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStep step, bool showPass, bool showRepeatedPass,
            bool isLoading, String? requestId, String? error)?
        ready,
  }) {
    return ready?.call(
        step, showPass, showRepeatedPass, isLoading, requestId, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStep step, bool showPass, bool showRepeatedPass,
            bool isLoading, String? requestId, String? error)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(
          step, showPass, showRepeatedPass, isLoading, requestId, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements RegisterState {
  const factory _Ready(
      {final RegisterStep step,
      final bool showPass,
      final bool showRepeatedPass,
      final bool isLoading,
      final String? requestId,
      final String? error}) = _$ReadyImpl;

  @override
  RegisterStep get step;
  @override
  bool get showPass;
  @override
  bool get showRepeatedPass;
  @override
  bool get isLoading;
  @override
  String? get requestId;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String phone, String? inn});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? phone = null,
    Object? inn = freezed,
  }) {
    return _then(_$InitImpl(
      null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.requestId, this.phone, this.inn);

  @override
  final String requestId;
  @override
  final String phone;
  @override
  final String? inn;

  @override
  String toString() {
    return 'RegisterEvent.init(requestId: $requestId, phone: $phone, inn: $inn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.inn, inn) || other.inn == inn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, phone, inn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return init(requestId, phone, inn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return init?.call(requestId, phone, inn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(requestId, phone, inn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements RegisterEvent {
  const factory _Init(
          final String requestId, final String phone, final String? inn) =
      _$InitImpl;

  String get requestId;
  String get phone;
  String? get inn;
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl();

  @override
  String toString() {
    return 'RegisterEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements RegisterEvent {
  const factory _Register() = _$RegisterImpl;
}

/// @nodoc
abstract class _$$CheckInnImplCopyWith<$Res> {
  factory _$$CheckInnImplCopyWith(
          _$CheckInnImpl value, $Res Function(_$CheckInnImpl) then) =
      __$$CheckInnImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckInnImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$CheckInnImpl>
    implements _$$CheckInnImplCopyWith<$Res> {
  __$$CheckInnImplCopyWithImpl(
      _$CheckInnImpl _value, $Res Function(_$CheckInnImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckInnImpl implements _CheckInn {
  const _$CheckInnImpl();

  @override
  String toString() {
    return 'RegisterEvent.checkInn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckInnImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return checkInn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return checkInn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (checkInn != null) {
      return checkInn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return checkInn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return checkInn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (checkInn != null) {
      return checkInn(this);
    }
    return orElse();
  }
}

abstract class _CheckInn implements RegisterEvent {
  const factory _CheckInn() = _$CheckInnImpl;
}

/// @nodoc
abstract class _$$SendCodeImplCopyWith<$Res> {
  factory _$$SendCodeImplCopyWith(
          _$SendCodeImpl value, $Res Function(_$SendCodeImpl) then) =
      __$$SendCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, String requestId});
}

/// @nodoc
class __$$SendCodeImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SendCodeImpl>
    implements _$$SendCodeImplCopyWith<$Res> {
  __$$SendCodeImplCopyWithImpl(
      _$SendCodeImpl _value, $Res Function(_$SendCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? requestId = null,
  }) {
    return _then(_$SendCodeImpl(
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

class _$SendCodeImpl implements _SendCode {
  const _$SendCodeImpl(this.phone, this.requestId);

  @override
  final String phone;
  @override
  final String requestId;

  @override
  String toString() {
    return 'RegisterEvent.sendCode(phone: $phone, requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      __$$SendCodeImplCopyWithImpl<_$SendCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return sendCode(phone, requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return sendCode?.call(phone, requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(phone, requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class _SendCode implements RegisterEvent {
  const factory _SendCode(final String phone, final String requestId) =
      _$SendCodeImpl;

  String get phone;
  String get requestId;
  @JsonKey(ignore: true)
  _$$SendCodeImplCopyWith<_$SendCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPasswordImplCopyWith<$Res> {
  factory _$$SetPasswordImplCopyWith(
          _$SetPasswordImpl value, $Res Function(_$SetPasswordImpl) then) =
      __$$SetPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetPasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SetPasswordImpl>
    implements _$$SetPasswordImplCopyWith<$Res> {
  __$$SetPasswordImplCopyWithImpl(
      _$SetPasswordImpl _value, $Res Function(_$SetPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetPasswordImpl implements _SetPassword {
  const _$SetPasswordImpl();

  @override
  String toString() {
    return 'RegisterEvent.setPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return setPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return setPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }
}

abstract class _SetPassword implements RegisterEvent {
  const factory _SetPassword() = _$SetPasswordImpl;
}

/// @nodoc
abstract class _$$ShowPassToggleImplCopyWith<$Res> {
  factory _$$ShowPassToggleImplCopyWith(_$ShowPassToggleImpl value,
          $Res Function(_$ShowPassToggleImpl) then) =
      __$$ShowPassToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassToggleImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ShowPassToggleImpl>
    implements _$$ShowPassToggleImplCopyWith<$Res> {
  __$$ShowPassToggleImplCopyWithImpl(
      _$ShowPassToggleImpl _value, $Res Function(_$ShowPassToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowPassToggleImpl implements _ShowPassToggle {
  const _$ShowPassToggleImpl();

  @override
  String toString() {
    return 'RegisterEvent.showPassToggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return showPassToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return showPassToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (showPassToggle != null) {
      return showPassToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return showPassToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return showPassToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (showPassToggle != null) {
      return showPassToggle(this);
    }
    return orElse();
  }
}

abstract class _ShowPassToggle implements RegisterEvent {
  const factory _ShowPassToggle() = _$ShowPassToggleImpl;
}

/// @nodoc
abstract class _$$ShowRepeatedPassToggleImplCopyWith<$Res> {
  factory _$$ShowRepeatedPassToggleImplCopyWith(
          _$ShowRepeatedPassToggleImpl value,
          $Res Function(_$ShowRepeatedPassToggleImpl) then) =
      __$$ShowRepeatedPassToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowRepeatedPassToggleImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ShowRepeatedPassToggleImpl>
    implements _$$ShowRepeatedPassToggleImplCopyWith<$Res> {
  __$$ShowRepeatedPassToggleImplCopyWithImpl(
      _$ShowRepeatedPassToggleImpl _value,
      $Res Function(_$ShowRepeatedPassToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowRepeatedPassToggleImpl implements _ShowRepeatedPassToggle {
  const _$ShowRepeatedPassToggleImpl();

  @override
  String toString() {
    return 'RegisterEvent.showRepeatedPassToggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowRepeatedPassToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return showRepeatedPassToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return showRepeatedPassToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (showRepeatedPassToggle != null) {
      return showRepeatedPassToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return showRepeatedPassToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return showRepeatedPassToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (showRepeatedPassToggle != null) {
      return showRepeatedPassToggle(this);
    }
    return orElse();
  }
}

abstract class _ShowRepeatedPassToggle implements RegisterEvent {
  const factory _ShowRepeatedPassToggle() = _$ShowRepeatedPassToggleImpl;
}

/// @nodoc
abstract class _$$AddErrorImplCopyWith<$Res> {
  factory _$$AddErrorImplCopyWith(
          _$AddErrorImpl value, $Res Function(_$AddErrorImpl) then) =
      __$$AddErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddErrorImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$AddErrorImpl>
    implements _$$AddErrorImplCopyWith<$Res> {
  __$$AddErrorImplCopyWithImpl(
      _$AddErrorImpl _value, $Res Function(_$AddErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddErrorImpl implements _AddError {
  const _$AddErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RegisterEvent.addError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddErrorImplCopyWith<_$AddErrorImpl> get copyWith =>
      __$$AddErrorImplCopyWithImpl<_$AddErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String phone, String? inn) init,
    required TResult Function() register,
    required TResult Function() checkInn,
    required TResult Function(String phone, String requestId) sendCode,
    required TResult Function() setPassword,
    required TResult Function() showPassToggle,
    required TResult Function() showRepeatedPassToggle,
    required TResult Function(String error) addError,
  }) {
    return addError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String phone, String? inn)? init,
    TResult? Function()? register,
    TResult? Function()? checkInn,
    TResult? Function(String phone, String requestId)? sendCode,
    TResult? Function()? setPassword,
    TResult? Function()? showPassToggle,
    TResult? Function()? showRepeatedPassToggle,
    TResult? Function(String error)? addError,
  }) {
    return addError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String phone, String? inn)? init,
    TResult Function()? register,
    TResult Function()? checkInn,
    TResult Function(String phone, String requestId)? sendCode,
    TResult Function()? setPassword,
    TResult Function()? showPassToggle,
    TResult Function()? showRepeatedPassToggle,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Register value) register,
    required TResult Function(_CheckInn value) checkInn,
    required TResult Function(_SendCode value) sendCode,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_ShowRepeatedPassToggle value)
        showRepeatedPassToggle,
    required TResult Function(_AddError value) addError,
  }) {
    return addError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Register value)? register,
    TResult? Function(_CheckInn value)? checkInn,
    TResult? Function(_SendCode value)? sendCode,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult? Function(_AddError value)? addError,
  }) {
    return addError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Register value)? register,
    TResult Function(_CheckInn value)? checkInn,
    TResult Function(_SendCode value)? sendCode,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_ShowRepeatedPassToggle value)? showRepeatedPassToggle,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(this);
    }
    return orElse();
  }
}

abstract class _AddError implements RegisterEvent {
  const factory _AddError(final String error) = _$AddErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AddErrorImplCopyWith<_$AddErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
