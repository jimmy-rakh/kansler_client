// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<PostersDto> posters, int? index) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<PostersDto> posters, int? index)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<PostersDto> posters, int? index)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'BannerState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<PostersDto> posters, int? index) success,
    required TResult Function() failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<PostersDto> posters, int? index)? success,
    TResult? Function()? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<PostersDto> posters, int? index)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BannerState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PostersDto> posters, int? index});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posters = null,
    Object? index = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<PostersDto>,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<PostersDto> posters, {this.index = 0})
      : _posters = posters;

  final List<PostersDto> _posters;
  @override
  List<PostersDto> get posters {
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posters);
  }

  @override
  @JsonKey()
  final int? index;

  @override
  String toString() {
    return 'BannerState.success(posters: $posters, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._posters, _posters) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_posters), index);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<PostersDto> posters, int? index) success,
    required TResult Function() failure,
  }) {
    return success(posters, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<PostersDto> posters, int? index)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(posters, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<PostersDto> posters, int? index)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posters, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BannerState {
  const factory _Success(final List<PostersDto> posters, {final int? index}) =
      _$SuccessImpl;

  List<PostersDto> get posters;
  int? get index;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'BannerState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<PostersDto> posters, int? index) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<PostersDto> posters, int? index)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<PostersDto> posters, int? index)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements BannerState {
  const factory _Failure() = _$FailureImpl;
}

/// @nodoc
mixin _$BannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res, BannerEvent>;
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res, $Val extends BannerEvent>
    implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'BannerEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements BannerEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$OnChangeImplCopyWith<$Res> {
  factory _$$OnChangeImplCopyWith(
          _$OnChangeImpl value, $Res Function(_$OnChangeImpl) then) =
      __$$OnChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$OnChangeImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$OnChangeImpl>
    implements _$$OnChangeImplCopyWith<$Res> {
  __$$OnChangeImplCopyWithImpl(
      _$OnChangeImpl _value, $Res Function(_$OnChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnChangeImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnChangeImpl implements _OnChange {
  const _$OnChangeImpl(this.index);

  @override
  final int? index;

  @override
  String toString() {
    return 'BannerEvent.onChange(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      __$$OnChangeImplCopyWithImpl<_$OnChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
  }) {
    return onChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
  }) {
    return onChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChange implements BannerEvent {
  const factory _OnChange(final int? index) = _$OnChangeImpl;

  int? get index;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNextImplCopyWith<$Res> {
  factory _$$OnNextImplCopyWith(
          _$OnNextImpl value, $Res Function(_$OnNextImpl) then) =
      __$$OnNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$OnNextImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$OnNextImpl>
    implements _$$OnNextImplCopyWith<$Res> {
  __$$OnNextImplCopyWithImpl(
      _$OnNextImpl _value, $Res Function(_$OnNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnNextImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnNextImpl implements _OnNext {
  const _$OnNextImpl(this.index);

  @override
  final int? index;

  @override
  String toString() {
    return 'BannerEvent.onNext(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNextImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNextImplCopyWith<_$OnNextImpl> get copyWith =>
      __$$OnNextImplCopyWithImpl<_$OnNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
  }) {
    return onNext(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
  }) {
    return onNext?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
  }) {
    return onNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
  }) {
    return onNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(this);
    }
    return orElse();
  }
}

abstract class _OnNext implements BannerEvent {
  const factory _OnNext(final int? index) = _$OnNextImpl;

  int? get index;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNextImplCopyWith<_$OnNextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPreviousImplCopyWith<$Res> {
  factory _$$OnPreviousImplCopyWith(
          _$OnPreviousImpl value, $Res Function(_$OnPreviousImpl) then) =
      __$$OnPreviousImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$OnPreviousImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$OnPreviousImpl>
    implements _$$OnPreviousImplCopyWith<$Res> {
  __$$OnPreviousImplCopyWithImpl(
      _$OnPreviousImpl _value, $Res Function(_$OnPreviousImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnPreviousImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnPreviousImpl implements _OnPrevious {
  const _$OnPreviousImpl(this.index);

  @override
  final int? index;

  @override
  String toString() {
    return 'BannerEvent.onPrevious(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPreviousImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPreviousImplCopyWith<_$OnPreviousImpl> get copyWith =>
      __$$OnPreviousImplCopyWithImpl<_$OnPreviousImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
  }) {
    return onPrevious(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
  }) {
    return onPrevious?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    required TResult orElse(),
  }) {
    if (onPrevious != null) {
      return onPrevious(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
  }) {
    return onPrevious(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
  }) {
    return onPrevious?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    required TResult orElse(),
  }) {
    if (onPrevious != null) {
      return onPrevious(this);
    }
    return orElse();
  }
}

abstract class _OnPrevious implements BannerEvent {
  const factory _OnPrevious(final int? index) = _$OnPreviousImpl;

  int? get index;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPreviousImplCopyWith<_$OnPreviousImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
