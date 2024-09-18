// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<CartProduct> products, int price, bool isMoreLoading)
        ready,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
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
    extends _$CartStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.loadInProgress'));
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
    required TResult Function(
            List<CartProduct> products, int price, bool isMoreLoading)
        ready,
    required TResult Function() error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult? Function()? error,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult Function()? error,
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
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CartState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartProduct> products, int price, bool isMoreLoading});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? price = null,
    Object? isMoreLoading = null,
  }) {
    return _then(_$ReadyImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ReadyImpl with DiagnosticableTreeMixin implements _Ready {
  const _$ReadyImpl(
      {required final List<CartProduct> products,
      required this.price,
      this.isMoreLoading = false})
      : _products = products;

  final List<CartProduct> _products;
  @override
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int price;
  @override
  @JsonKey()
  final bool isMoreLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.ready(products: $products, price: $price, isMoreLoading: $isMoreLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartState.ready'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('isMoreLoading', isMoreLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), price, isMoreLoading);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<CartProduct> products, int price, bool isMoreLoading)
        ready,
    required TResult Function() error,
  }) {
    return ready(products, price, isMoreLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult? Function()? error,
  }) {
    return ready?.call(products, price, isMoreLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(products, price, isMoreLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements CartState {
  const factory _Ready(
      {required final List<CartProduct> products,
      required final int price,
      final bool isMoreLoading}) = _$ReadyImpl;

  List<CartProduct> get products;
  int get price;
  bool get isMoreLoading;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartState.error'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<CartProduct> products, int price, bool isMoreLoading)
        ready,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<CartProduct> products, int price, bool isMoreLoading)?
        ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
          _$RetryImpl value, $Res Function(_$RetryImpl) then) =
      __$$RetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryImpl with DiagnosticableTreeMixin implements _Retry {
  const _$RetryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.retry()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.retry'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class _Retry implements CartEvent {
  const factory _Retry() = _$RetryImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int quantity, bool updateDependencies});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? updateDependencies = null,
  }) {
    return _then(_$AddToCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      updateDependencies: null == updateDependencies
          ? _value.updateDependencies
          : updateDependencies // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl with DiagnosticableTreeMixin implements _AddToCart {
  const _$AddToCartImpl(this.id, this.quantity,
      {this.updateDependencies = false});

  @override
  final int id;
  @override
  final int quantity;
  @override
  @JsonKey()
  final bool updateDependencies;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.addToCart(id: $id, quantity: $quantity, updateDependencies: $updateDependencies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.addToCart'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('updateDependencies', updateDependencies));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.updateDependencies, updateDependencies) ||
                other.updateDependencies == updateDependencies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, updateDependencies);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return addToCart(id, quantity, updateDependencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return addToCart?.call(id, quantity, updateDependencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(id, quantity, updateDependencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final int id, final int quantity,
      {final bool updateDependencies}) = _$AddToCartImpl;

  int get id;
  int get quantity;
  bool get updateDependencies;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductInCartImplCopyWith<$Res> {
  factory _$$UpdateProductInCartImplCopyWith(_$UpdateProductInCartImpl value,
          $Res Function(_$UpdateProductInCartImpl) then) =
      __$$UpdateProductInCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int quantity});
}

/// @nodoc
class __$$UpdateProductInCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateProductInCartImpl>
    implements _$$UpdateProductInCartImplCopyWith<$Res> {
  __$$UpdateProductInCartImplCopyWithImpl(_$UpdateProductInCartImpl _value,
      $Res Function(_$UpdateProductInCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateProductInCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateProductInCartImpl
    with DiagnosticableTreeMixin
    implements _UpdateProductInCart {
  const _$UpdateProductInCartImpl(this.id, this.quantity);

  @override
  final int id;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.updateProductInCart(id: $id, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.updateProductInCart'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductInCartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductInCartImplCopyWith<_$UpdateProductInCartImpl> get copyWith =>
      __$$UpdateProductInCartImplCopyWithImpl<_$UpdateProductInCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return updateProductInCart(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return updateProductInCart?.call(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (updateProductInCart != null) {
      return updateProductInCart(id, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return updateProductInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return updateProductInCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (updateProductInCart != null) {
      return updateProductInCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateProductInCart implements CartEvent {
  const factory _UpdateProductInCart(final int id, final int quantity) =
      _$UpdateProductInCartImpl;

  int get id;
  int get quantity;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProductInCartImplCopyWith<_$UpdateProductInCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductInCartImplCopyWith<$Res> {
  factory _$$DeleteProductInCartImplCopyWith(_$DeleteProductInCartImpl value,
          $Res Function(_$DeleteProductInCartImpl) then) =
      __$$DeleteProductInCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteProductInCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteProductInCartImpl>
    implements _$$DeleteProductInCartImplCopyWith<$Res> {
  __$$DeleteProductInCartImplCopyWithImpl(_$DeleteProductInCartImpl _value,
      $Res Function(_$DeleteProductInCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProductInCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProductInCartImpl
    with DiagnosticableTreeMixin
    implements _DeleteProductInCart {
  const _$DeleteProductInCartImpl(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.deleteProductInCart(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.deleteProductInCart'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductInCartImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductInCartImplCopyWith<_$DeleteProductInCartImpl> get copyWith =>
      __$$DeleteProductInCartImplCopyWithImpl<_$DeleteProductInCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return deleteProductInCart(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return deleteProductInCart?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductInCart != null) {
      return deleteProductInCart(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return deleteProductInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return deleteProductInCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductInCart != null) {
      return deleteProductInCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductInCart implements CartEvent {
  const factory _DeleteProductInCart(final int id) = _$DeleteProductInCartImpl;

  int get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductInCartImplCopyWith<_$DeleteProductInCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductsInCartImplCopyWith<$Res> {
  factory _$$DeleteProductsInCartImplCopyWith(_$DeleteProductsInCartImpl value,
          $Res Function(_$DeleteProductsInCartImpl) then) =
      __$$DeleteProductsInCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$DeleteProductsInCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteProductsInCartImpl>
    implements _$$DeleteProductsInCartImplCopyWith<$Res> {
  __$$DeleteProductsInCartImplCopyWithImpl(_$DeleteProductsInCartImpl _value,
      $Res Function(_$DeleteProductsInCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$DeleteProductsInCartImpl(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeleteProductsInCartImpl
    with DiagnosticableTreeMixin
    implements _DeleteProductsInCart {
  const _$DeleteProductsInCartImpl(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.deleteProductsInCart(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.deleteProductsInCart'))
      ..add(DiagnosticsProperty('ids', ids));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductsInCartImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductsInCartImplCopyWith<_$DeleteProductsInCartImpl>
      get copyWith =>
          __$$DeleteProductsInCartImplCopyWithImpl<_$DeleteProductsInCartImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return deleteProductsInCart(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return deleteProductsInCart?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductsInCart != null) {
      return deleteProductsInCart(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return deleteProductsInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return deleteProductsInCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductsInCart != null) {
      return deleteProductsInCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductsInCart implements CartEvent {
  const factory _DeleteProductsInCart(final List<int> ids) =
      _$DeleteProductsInCartImpl;

  List<int> get ids;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductsInCartImplCopyWith<_$DeleteProductsInCartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartPriceImplCopyWith<$Res> {
  factory _$$GetCartPriceImplCopyWith(
          _$GetCartPriceImpl value, $Res Function(_$GetCartPriceImpl) then) =
      __$$GetCartPriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartPriceImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartPriceImpl>
    implements _$$GetCartPriceImplCopyWith<$Res> {
  __$$GetCartPriceImplCopyWithImpl(
      _$GetCartPriceImpl _value, $Res Function(_$GetCartPriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCartPriceImpl with DiagnosticableTreeMixin implements _GetCartPrice {
  const _$GetCartPriceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.getCartPrice()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.getCartPrice'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartPriceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return getCartPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return getCartPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (getCartPrice != null) {
      return getCartPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return getCartPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return getCartPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (getCartPrice != null) {
      return getCartPrice(this);
    }
    return orElse();
  }
}

abstract class _GetCartPrice implements CartEvent {
  const factory _GetCartPrice() = _$GetCartPriceImpl;
}

/// @nodoc
abstract class _$$GetCartProductsImplCopyWith<$Res> {
  factory _$$GetCartProductsImplCopyWith(_$GetCartProductsImpl value,
          $Res Function(_$GetCartProductsImpl) then) =
      __$$GetCartProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMore});
}

/// @nodoc
class __$$GetCartProductsImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartProductsImpl>
    implements _$$GetCartProductsImplCopyWith<$Res> {
  __$$GetCartProductsImplCopyWithImpl(
      _$GetCartProductsImpl _value, $Res Function(_$GetCartProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMore = null,
  }) {
    return _then(_$GetCartProductsImpl(
      isMore: null == isMore
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetCartProductsImpl
    with DiagnosticableTreeMixin
    implements _GetCartProducts {
  const _$GetCartProductsImpl({this.isMore = false});

  @override
  @JsonKey()
  final bool isMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.getCartProducts(isMore: $isMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartEvent.getCartProducts'))
      ..add(DiagnosticsProperty('isMore', isMore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartProductsImpl &&
            (identical(other.isMore, isMore) || other.isMore == isMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMore);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartProductsImplCopyWith<_$GetCartProductsImpl> get copyWith =>
      __$$GetCartProductsImplCopyWithImpl<_$GetCartProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return getCartProducts(isMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return getCartProducts?.call(isMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (getCartProducts != null) {
      return getCartProducts(isMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return getCartProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return getCartProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (getCartProducts != null) {
      return getCartProducts(this);
    }
    return orElse();
  }
}

abstract class _GetCartProducts implements CartEvent {
  const factory _GetCartProducts({final bool isMore}) = _$GetCartProductsImpl;

  bool get isMore;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCartProductsImplCopyWith<_$GetCartProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToCheckoutImplCopyWith<$Res> {
  factory _$$ToCheckoutImplCopyWith(
          _$ToCheckoutImpl value, $Res Function(_$ToCheckoutImpl) then) =
      __$$ToCheckoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToCheckoutImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ToCheckoutImpl>
    implements _$$ToCheckoutImplCopyWith<$Res> {
  __$$ToCheckoutImplCopyWithImpl(
      _$ToCheckoutImpl _value, $Res Function(_$ToCheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToCheckoutImpl with DiagnosticableTreeMixin implements _ToCheckout {
  const _$ToCheckoutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartEvent.toCheckout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CartEvent.toCheckout'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToCheckoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToCart,
    required TResult Function(int id, int quantity) updateProductInCart,
    required TResult Function(int id) deleteProductInCart,
    required TResult Function(List<int> ids) deleteProductsInCart,
    required TResult Function() getCartPrice,
    required TResult Function(bool isMore) getCartProducts,
    required TResult Function() toCheckout,
  }) {
    return toCheckout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult? Function(int id, int quantity)? updateProductInCart,
    TResult? Function(int id)? deleteProductInCart,
    TResult? Function(List<int> ids)? deleteProductsInCart,
    TResult? Function()? getCartPrice,
    TResult? Function(bool isMore)? getCartProducts,
    TResult? Function()? toCheckout,
  }) {
    return toCheckout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)? addToCart,
    TResult Function(int id, int quantity)? updateProductInCart,
    TResult Function(int id)? deleteProductInCart,
    TResult Function(List<int> ids)? deleteProductsInCart,
    TResult Function()? getCartPrice,
    TResult Function(bool isMore)? getCartProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (toCheckout != null) {
      return toCheckout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateProductInCart value) updateProductInCart,
    required TResult Function(_DeleteProductInCart value) deleteProductInCart,
    required TResult Function(_DeleteProductsInCart value) deleteProductsInCart,
    required TResult Function(_GetCartPrice value) getCartPrice,
    required TResult Function(_GetCartProducts value) getCartProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return toCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateProductInCart value)? updateProductInCart,
    TResult? Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult? Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult? Function(_GetCartPrice value)? getCartPrice,
    TResult? Function(_GetCartProducts value)? getCartProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return toCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateProductInCart value)? updateProductInCart,
    TResult Function(_DeleteProductInCart value)? deleteProductInCart,
    TResult Function(_DeleteProductsInCart value)? deleteProductsInCart,
    TResult Function(_GetCartPrice value)? getCartPrice,
    TResult Function(_GetCartProducts value)? getCartProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (toCheckout != null) {
      return toCheckout(this);
    }
    return orElse();
  }
}

abstract class _ToCheckout implements CartEvent {
  const factory _ToCheckout() = _$ToCheckoutImpl;
}
