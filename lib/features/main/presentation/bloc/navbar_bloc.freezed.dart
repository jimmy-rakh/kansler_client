// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navbar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavbarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TabsRouter tabsRouter) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TabsRouter tabsRouter)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TabsRouter tabsRouter)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavbarStateCopyWith<$Res> {
  factory $NavbarStateCopyWith(
          NavbarState value, $Res Function(NavbarState) then) =
      _$NavbarStateCopyWithImpl<$Res, NavbarState>;
}

/// @nodoc
class _$NavbarStateCopyWithImpl<$Res, $Val extends NavbarState>
    implements $NavbarStateCopyWith<$Res> {
  _$NavbarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavbarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NavbarStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavbarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavbarState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NavbarState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TabsRouter tabsRouter) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TabsRouter tabsRouter)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TabsRouter tabsRouter)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NavbarState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TabsRouter tabsRouter});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$NavbarStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavbarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabsRouter = null,
  }) {
    return _then(_$ReadyImpl(
      null == tabsRouter
          ? _value.tabsRouter
          : tabsRouter // ignore: cast_nullable_to_non_nullable
              as TabsRouter,
    ));
  }
}

/// @nodoc

class _$ReadyImpl with DiagnosticableTreeMixin implements _Ready {
  const _$ReadyImpl(this.tabsRouter);

  @override
  final TabsRouter tabsRouter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavbarState.ready(tabsRouter: $tabsRouter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavbarState.ready'))
      ..add(DiagnosticsProperty('tabsRouter', tabsRouter));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.tabsRouter, tabsRouter) ||
                other.tabsRouter == tabsRouter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabsRouter);

  /// Create a copy of NavbarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TabsRouter tabsRouter) ready,
  }) {
    return ready(tabsRouter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TabsRouter tabsRouter)? ready,
  }) {
    return ready?.call(tabsRouter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TabsRouter tabsRouter)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(tabsRouter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements NavbarState {
  const factory _Ready(final TabsRouter tabsRouter) = _$ReadyImpl;

  TabsRouter get tabsRouter;

  /// Create a copy of NavbarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavbarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabsRouter tabsRouter) init,
    required TResult Function(int value) changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabsRouter tabsRouter)? init,
    TResult? Function(int value)? changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabsRouter tabsRouter)? init,
    TResult Function(int value)? changeIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeIndex value) changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeIndex value)? changeIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeIndex value)? changeIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavbarEventCopyWith<$Res> {
  factory $NavbarEventCopyWith(
          NavbarEvent value, $Res Function(NavbarEvent) then) =
      _$NavbarEventCopyWithImpl<$Res, NavbarEvent>;
}

/// @nodoc
class _$NavbarEventCopyWithImpl<$Res, $Val extends NavbarEvent>
    implements $NavbarEventCopyWith<$Res> {
  _$NavbarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TabsRouter tabsRouter});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$NavbarEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabsRouter = null,
  }) {
    return _then(_$InitImpl(
      null == tabsRouter
          ? _value.tabsRouter
          : tabsRouter // ignore: cast_nullable_to_non_nullable
              as TabsRouter,
    ));
  }
}

/// @nodoc

class _$InitImpl with DiagnosticableTreeMixin implements _Init {
  const _$InitImpl(this.tabsRouter);

  @override
  final TabsRouter tabsRouter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavbarEvent.init(tabsRouter: $tabsRouter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavbarEvent.init'))
      ..add(DiagnosticsProperty('tabsRouter', tabsRouter));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.tabsRouter, tabsRouter) ||
                other.tabsRouter == tabsRouter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabsRouter);

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabsRouter tabsRouter) init,
    required TResult Function(int value) changeIndex,
  }) {
    return init(tabsRouter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabsRouter tabsRouter)? init,
    TResult? Function(int value)? changeIndex,
  }) {
    return init?.call(tabsRouter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabsRouter tabsRouter)? init,
    TResult Function(int value)? changeIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(tabsRouter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeIndex value) changeIndex,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeIndex value)? changeIndex,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeIndex value)? changeIndex,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements NavbarEvent {
  const factory _Init(final TabsRouter tabsRouter) = _$InitImpl;

  TabsRouter get tabsRouter;

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIndexImplCopyWith<$Res> {
  factory _$$ChangeIndexImplCopyWith(
          _$ChangeIndexImpl value, $Res Function(_$ChangeIndexImpl) then) =
      __$$ChangeIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$ChangeIndexImplCopyWithImpl<$Res>
    extends _$NavbarEventCopyWithImpl<$Res, _$ChangeIndexImpl>
    implements _$$ChangeIndexImplCopyWith<$Res> {
  __$$ChangeIndexImplCopyWithImpl(
      _$ChangeIndexImpl _value, $Res Function(_$ChangeIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeIndexImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeIndexImpl with DiagnosticableTreeMixin implements _ChangeIndex {
  const _$ChangeIndexImpl(this.value);

  @override
  final int value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavbarEvent.changeIndex(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavbarEvent.changeIndex'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIndexImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIndexImplCopyWith<_$ChangeIndexImpl> get copyWith =>
      __$$ChangeIndexImplCopyWithImpl<_$ChangeIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabsRouter tabsRouter) init,
    required TResult Function(int value) changeIndex,
  }) {
    return changeIndex(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabsRouter tabsRouter)? init,
    TResult? Function(int value)? changeIndex,
  }) {
    return changeIndex?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabsRouter tabsRouter)? init,
    TResult Function(int value)? changeIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChangeIndex value) changeIndex,
  }) {
    return changeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChangeIndex value)? changeIndex,
  }) {
    return changeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChangeIndex value)? changeIndex,
    required TResult orElse(),
  }) {
    if (changeIndex != null) {
      return changeIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeIndex implements NavbarEvent {
  const factory _ChangeIndex(final int value) = _$ChangeIndexImpl;

  int get value;

  /// Create a copy of NavbarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeIndexImplCopyWith<_$ChangeIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
