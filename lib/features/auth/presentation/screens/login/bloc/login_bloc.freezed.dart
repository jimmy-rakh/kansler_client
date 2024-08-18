// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  LoginStatus get status => throw _privateConstructorUsedError;
  dynamic get isBusy => throw _privateConstructorUsedError;
  dynamic get validated => throw _privateConstructorUsedError;
  dynamic get showPass => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatus status,
      dynamic isBusy,
      dynamic validated,
      dynamic showPass,
      int tabIndex,
      String? error});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isBusy = freezed,
    Object? validated = freezed,
    Object? showPass = freezed,
    Object? tabIndex = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      isBusy: freezed == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      validated: freezed == validated
          ? _value.validated
          : validated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      showPass: freezed == showPass
          ? _value.showPass
          : showPass // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus status,
      dynamic isBusy,
      dynamic validated,
      dynamic showPass,
      int tabIndex,
      String? error});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isBusy = freezed,
    Object? validated = freezed,
    Object? showPass = freezed,
    Object? tabIndex = null,
    Object? error = freezed,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      isBusy: freezed == isBusy ? _value.isBusy! : isBusy,
      validated: freezed == validated ? _value.validated! : validated,
      showPass: freezed == showPass ? _value.showPass! : showPass,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.status = LoginStatus.initial,
      this.isBusy = false,
      this.validated = false,
      this.showPass = false,
      this.tabIndex = 0,
      this.error});

  @override
  @JsonKey()
  final LoginStatus status;
  @override
  @JsonKey()
  final dynamic isBusy;
  @override
  @JsonKey()
  final dynamic validated;
  @override
  @JsonKey()
  final dynamic showPass;
  @override
  @JsonKey()
  final int tabIndex;
  @override
  final String? error;

  @override
  String toString() {
    return 'LoginState(status: $status, isBusy: $isBusy, validated: $validated, showPass: $showPass, tabIndex: $tabIndex, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.isBusy, isBusy) &&
            const DeepCollectionEquality().equals(other.validated, validated) &&
            const DeepCollectionEquality().equals(other.showPass, showPass) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(isBusy),
      const DeepCollectionEquality().hash(validated),
      const DeepCollectionEquality().hash(showPass),
      tabIndex,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final LoginStatus status,
      final dynamic isBusy,
      final dynamic validated,
      final dynamic showPass,
      final int tabIndex,
      final String? error}) = _$LoginStateImpl;

  @override
  LoginStatus get status;
  @override
  dynamic get isBusy;
  @override
  dynamic get validated;
  @override
  dynamic get showPass;
  @override
  int get tabIndex;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() showPassToggle,
    required TResult Function(TabController tabController) init,
    required TResult Function(int index) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? showPassToggle,
    TResult? Function(TabController tabController)? init,
    TResult? Function(int index)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? showPassToggle,
    TResult Function(TabController tabController)? init,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_Init value)? init,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() showPassToggle,
    required TResult Function(TabController tabController) init,
    required TResult Function(int index) changeTabIndex,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? showPassToggle,
    TResult? Function(TabController tabController)? init,
    TResult? Function(int index)? changeTabIndex,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? showPassToggle,
    TResult Function(TabController tabController)? init,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_Init value)? init,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$ShowPassToggleImplCopyWith<$Res> {
  factory _$$ShowPassToggleImplCopyWith(_$ShowPassToggleImpl value,
          $Res Function(_$ShowPassToggleImpl) then) =
      __$$ShowPassToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassToggleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ShowPassToggleImpl>
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
    return 'LoginEvent.showPassToggle()';
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
    required TResult Function() login,
    required TResult Function() showPassToggle,
    required TResult Function(TabController tabController) init,
    required TResult Function(int index) changeTabIndex,
  }) {
    return showPassToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? showPassToggle,
    TResult? Function(TabController tabController)? init,
    TResult? Function(int index)? changeTabIndex,
  }) {
    return showPassToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? showPassToggle,
    TResult Function(TabController tabController)? init,
    TResult Function(int index)? changeTabIndex,
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
    required TResult Function(_Login value) login,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return showPassToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return showPassToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_Init value)? init,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (showPassToggle != null) {
      return showPassToggle(this);
    }
    return orElse();
  }
}

abstract class _ShowPassToggle implements LoginEvent {
  const factory _ShowPassToggle() = _$ShowPassToggleImpl;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TabController tabController});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabController = null,
  }) {
    return _then(_$InitImpl(
      null == tabController
          ? _value.tabController
          : tabController // ignore: cast_nullable_to_non_nullable
              as TabController,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.tabController);

  @override
  final TabController tabController;

  @override
  String toString() {
    return 'LoginEvent.init(tabController: $tabController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.tabController, tabController) ||
                other.tabController == tabController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() showPassToggle,
    required TResult Function(TabController tabController) init,
    required TResult Function(int index) changeTabIndex,
  }) {
    return init(tabController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? showPassToggle,
    TResult? Function(TabController tabController)? init,
    TResult? Function(int index)? changeTabIndex,
  }) {
    return init?.call(tabController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? showPassToggle,
    TResult Function(TabController tabController)? init,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(tabController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_Init value)? init,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements LoginEvent {
  const factory _Init(final TabController tabController) = _$InitImpl;

  TabController get tabController;
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTabIndexImplCopyWith<$Res> {
  factory _$$ChangeTabIndexImplCopyWith(_$ChangeTabIndexImpl value,
          $Res Function(_$ChangeTabIndexImpl) then) =
      __$$ChangeTabIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeTabIndexImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ChangeTabIndexImpl>
    implements _$$ChangeTabIndexImplCopyWith<$Res> {
  __$$ChangeTabIndexImplCopyWithImpl(
      _$ChangeTabIndexImpl _value, $Res Function(_$ChangeTabIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeTabIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTabIndexImpl implements _ChangeTabIndex {
  const _$ChangeTabIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LoginEvent.changeTabIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabIndexImplCopyWith<_$ChangeTabIndexImpl> get copyWith =>
      __$$ChangeTabIndexImplCopyWithImpl<_$ChangeTabIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
    required TResult Function() showPassToggle,
    required TResult Function(TabController tabController) init,
    required TResult Function(int index) changeTabIndex,
  }) {
    return changeTabIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? login,
    TResult? Function()? showPassToggle,
    TResult? Function(TabController tabController)? init,
    TResult? Function(int index)? changeTabIndex,
  }) {
    return changeTabIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    TResult Function()? showPassToggle,
    TResult Function(TabController tabController)? init,
    TResult Function(int index)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ShowPassToggle value) showPassToggle,
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeTabIndex value) changeTabIndex,
  }) {
    return changeTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ShowPassToggle value)? showPassToggle,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeTabIndex value)? changeTabIndex,
  }) {
    return changeTabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ShowPassToggle value)? showPassToggle,
    TResult Function(_Init value)? init,
    TResult Function(_ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabIndex implements LoginEvent {
  const factory _ChangeTabIndex(final int index) = _$ChangeTabIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeTabIndexImplCopyWith<_$ChangeTabIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
