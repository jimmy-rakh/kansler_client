// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(List<ProductEntity> products) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<ProductEntity> products)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? success,
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
abstract class $HitStateCopyWith<$Res> {
  factory $HitStateCopyWith(HitState value, $Res Function(HitState) then) =
      _$HitStateCopyWithImpl<$Res, HitState>;
}

/// @nodoc
class _$HitStateCopyWithImpl<$Res, $Val extends HitState>
    implements $HitStateCopyWith<$Res> {
  _$HitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HitState
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
    extends _$HitStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'HitState.loadInProgress()';
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
    required TResult Function(List<ProductEntity> products) success,
    required TResult Function() failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<ProductEntity> products)? success,
    TResult? Function()? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? success,
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

abstract class _LoadInProgress implements HitState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductEntity> products});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$HitStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$SuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<ProductEntity> products)
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HitState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of HitState
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
    required TResult Function(List<ProductEntity> products) success,
    required TResult Function() failure,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<ProductEntity> products)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
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

abstract class _Success implements HitState {
  const factory _Success(final List<ProductEntity> products) = _$SuccessImpl;

  List<ProductEntity> get products;

  /// Create a copy of HitState
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
    extends _$HitStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'HitState.failure()';
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
    required TResult Function(List<ProductEntity> products) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<ProductEntity> products)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products)? success,
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

abstract class _Failure implements HitState {
  const factory _Failure() = _$FailureImpl;
}

/// @nodoc
mixin _$HitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id, CheckoutType type) addToCart,
    required TResult Function(dynamic position) position,
    required TResult Function(dynamic position) positionNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id, CheckoutType type)? addToCart,
    TResult? Function(dynamic position)? position,
    TResult? Function(dynamic position)? positionNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id, CheckoutType type)? addToCart,
    TResult Function(dynamic position)? position,
    TResult Function(dynamic position)? positionNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_Position value) position,
    required TResult Function(_PositionNext value) positionNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_Position value)? position,
    TResult? Function(_PositionNext value)? positionNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_Position value)? position,
    TResult Function(_PositionNext value)? positionNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitEventCopyWith<$Res> {
  factory $HitEventCopyWith(HitEvent value, $Res Function(HitEvent) then) =
      _$HitEventCopyWithImpl<$Res, HitEvent>;
}

/// @nodoc
class _$HitEventCopyWithImpl<$Res, $Val extends HitEvent>
    implements $HitEventCopyWith<$Res> {
  _$HitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HitEvent
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
    extends _$HitEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'HitEvent.fetch()';
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
    required TResult Function(int id, CheckoutType type) addToCart,
    required TResult Function(dynamic position) position,
    required TResult Function(dynamic position) positionNext,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id, CheckoutType type)? addToCart,
    TResult? Function(dynamic position)? position,
    TResult? Function(dynamic position)? positionNext,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id, CheckoutType type)? addToCart,
    TResult Function(dynamic position)? position,
    TResult Function(dynamic position)? positionNext,
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
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_Position value) position,
    required TResult Function(_PositionNext value) positionNext,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_Position value)? position,
    TResult? Function(_PositionNext value)? positionNext,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_Position value)? position,
    TResult Function(_PositionNext value)? positionNext,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements HitEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, CheckoutType type});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$HitEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$AddToCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CheckoutType,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.id, this.type);

  @override
  final int id;
  @override
  final CheckoutType type;

  @override
  String toString() {
    return 'HitEvent.addToCart(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id, CheckoutType type) addToCart,
    required TResult Function(dynamic position) position,
    required TResult Function(dynamic position) positionNext,
  }) {
    return addToCart(id, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id, CheckoutType type)? addToCart,
    TResult? Function(dynamic position)? position,
    TResult? Function(dynamic position)? positionNext,
  }) {
    return addToCart?.call(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id, CheckoutType type)? addToCart,
    TResult Function(dynamic position)? position,
    TResult Function(dynamic position)? positionNext,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_Position value) position,
    required TResult Function(_PositionNext value) positionNext,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_Position value)? position,
    TResult? Function(_PositionNext value)? positionNext,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_Position value)? position,
    TResult Function(_PositionNext value)? positionNext,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements HitEvent {
  const factory _AddToCart(final int id, final CheckoutType type) =
      _$AddToCartImpl;

  int get id;
  CheckoutType get type;

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositionImplCopyWith<$Res> {
  factory _$$PositionImplCopyWith(
          _$PositionImpl value, $Res Function(_$PositionImpl) then) =
      __$$PositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic position});
}

/// @nodoc
class __$$PositionImplCopyWithImpl<$Res>
    extends _$HitEventCopyWithImpl<$Res, _$PositionImpl>
    implements _$$PositionImplCopyWith<$Res> {
  __$$PositionImplCopyWithImpl(
      _$PositionImpl _value, $Res Function(_$PositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$PositionImpl(
      freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PositionImpl implements _Position {
  const _$PositionImpl(this.position);

  @override
  final dynamic position;

  @override
  String toString() {
    return 'HitEvent.position(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionImpl &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      __$$PositionImplCopyWithImpl<_$PositionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id, CheckoutType type) addToCart,
    required TResult Function(dynamic position) position,
    required TResult Function(dynamic position) positionNext,
  }) {
    return position(this.position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id, CheckoutType type)? addToCart,
    TResult? Function(dynamic position)? position,
    TResult? Function(dynamic position)? positionNext,
  }) {
    return position?.call(this.position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id, CheckoutType type)? addToCart,
    TResult Function(dynamic position)? position,
    TResult Function(dynamic position)? positionNext,
    required TResult orElse(),
  }) {
    if (position != null) {
      return position(this.position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_Position value) position,
    required TResult Function(_PositionNext value) positionNext,
  }) {
    return position(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_Position value)? position,
    TResult? Function(_PositionNext value)? positionNext,
  }) {
    return position?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_Position value)? position,
    TResult Function(_PositionNext value)? positionNext,
    required TResult orElse(),
  }) {
    if (position != null) {
      return position(this);
    }
    return orElse();
  }
}

abstract class _Position implements HitEvent {
  const factory _Position(final dynamic position) = _$PositionImpl;

  dynamic get position;

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionImplCopyWith<_$PositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositionNextImplCopyWith<$Res> {
  factory _$$PositionNextImplCopyWith(
          _$PositionNextImpl value, $Res Function(_$PositionNextImpl) then) =
      __$$PositionNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic position});
}

/// @nodoc
class __$$PositionNextImplCopyWithImpl<$Res>
    extends _$HitEventCopyWithImpl<$Res, _$PositionNextImpl>
    implements _$$PositionNextImplCopyWith<$Res> {
  __$$PositionNextImplCopyWithImpl(
      _$PositionNextImpl _value, $Res Function(_$PositionNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$PositionNextImpl(
      freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PositionNextImpl implements _PositionNext {
  const _$PositionNextImpl(this.position);

  @override
  final dynamic position;

  @override
  String toString() {
    return 'HitEvent.positionNext(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionNextImpl &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionNextImplCopyWith<_$PositionNextImpl> get copyWith =>
      __$$PositionNextImplCopyWithImpl<_$PositionNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int id, CheckoutType type) addToCart,
    required TResult Function(dynamic position) position,
    required TResult Function(dynamic position) positionNext,
  }) {
    return positionNext(this.position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int id, CheckoutType type)? addToCart,
    TResult? Function(dynamic position)? position,
    TResult? Function(dynamic position)? positionNext,
  }) {
    return positionNext?.call(this.position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int id, CheckoutType type)? addToCart,
    TResult Function(dynamic position)? position,
    TResult Function(dynamic position)? positionNext,
    required TResult orElse(),
  }) {
    if (positionNext != null) {
      return positionNext(this.position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_Position value) position,
    required TResult Function(_PositionNext value) positionNext,
  }) {
    return positionNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_Position value)? position,
    TResult? Function(_PositionNext value)? positionNext,
  }) {
    return positionNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_Position value)? position,
    TResult Function(_PositionNext value)? positionNext,
    required TResult orElse(),
  }) {
    if (positionNext != null) {
      return positionNext(this);
    }
    return orElse();
  }
}

abstract class _PositionNext implements HitEvent {
  const factory _PositionNext(final dynamic position) = _$PositionNextImpl;

  dynamic get position;

  /// Create a copy of HitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionNextImplCopyWith<_$PositionNextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
