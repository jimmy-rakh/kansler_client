// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preorders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreordersState {
  PreordersStatus get status => throw _privateConstructorUsedError;
  List<CartProduct> get products => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  bool get isMoreLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreordersStateCopyWith<PreordersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreordersStateCopyWith<$Res> {
  factory $PreordersStateCopyWith(
          PreordersState value, $Res Function(PreordersState) then) =
      _$PreordersStateCopyWithImpl<$Res, PreordersState>;
  @useResult
  $Res call(
      {PreordersStatus status,
      List<CartProduct> products,
      int? price,
      bool isMoreLoading});
}

/// @nodoc
class _$PreordersStateCopyWithImpl<$Res, $Val extends PreordersState>
    implements $PreordersStateCopyWith<$Res> {
  _$PreordersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? price = freezed,
    Object? isMoreLoading = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PreordersStatus,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $PreordersStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PreordersStatus status,
      List<CartProduct> products,
      int? price,
      bool isMoreLoading});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$PreordersStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? price = freezed,
    Object? isMoreLoading = null,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PreordersStatus,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.status = PreordersStatus.loading,
      final List<CartProduct> products = const [],
      this.price,
      this.isMoreLoading = false})
      : _products = products;

  @override
  @JsonKey()
  final PreordersStatus status;
  final List<CartProduct> _products;
  @override
  @JsonKey()
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int? price;
  @override
  @JsonKey()
  final bool isMoreLoading;

  @override
  String toString() {
    return 'PreordersState(status: $status, products: $products, price: $price, isMoreLoading: $isMoreLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_products), price, isMoreLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements PreordersState {
  const factory _LoginState(
      {final PreordersStatus status,
      final List<CartProduct> products,
      final int? price,
      final bool isMoreLoading}) = _$LoginStateImpl;

  @override
  PreordersStatus get status;
  @override
  List<CartProduct> get products;
  @override
  int? get price;
  @override
  bool get isMoreLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PreordersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreordersEventCopyWith<$Res> {
  factory $PreordersEventCopyWith(
          PreordersEvent value, $Res Function(PreordersEvent) then) =
      _$PreordersEventCopyWithImpl<$Res, PreordersEvent>;
}

/// @nodoc
class _$PreordersEventCopyWithImpl<$Res, $Val extends PreordersEvent>
    implements $PreordersEventCopyWith<$Res> {
  _$PreordersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
          _$RetryImpl value, $Res Function(_$RetryImpl) then) =
      __$$RetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetryImpl implements _Retry {
  const _$RetryImpl();

  @override
  String toString() {
    return 'PreordersEvent.retry()';
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
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
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
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class _Retry implements PreordersEvent {
  const factory _Retry() = _$RetryImpl;
}

/// @nodoc
abstract class _$$AddToPreordersImplCopyWith<$Res> {
  factory _$$AddToPreordersImplCopyWith(_$AddToPreordersImpl value,
          $Res Function(_$AddToPreordersImpl) then) =
      __$$AddToPreordersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int quantity, bool updateDependencies});
}

/// @nodoc
class __$$AddToPreordersImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$AddToPreordersImpl>
    implements _$$AddToPreordersImplCopyWith<$Res> {
  __$$AddToPreordersImplCopyWithImpl(
      _$AddToPreordersImpl _value, $Res Function(_$AddToPreordersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
    Object? updateDependencies = null,
  }) {
    return _then(_$AddToPreordersImpl(
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

class _$AddToPreordersImpl implements _AddToPreorders {
  const _$AddToPreordersImpl(this.id, this.quantity,
      {this.updateDependencies = false});

  @override
  final int id;
  @override
  final int quantity;
  @override
  @JsonKey()
  final bool updateDependencies;

  @override
  String toString() {
    return 'PreordersEvent.addToPreorders(id: $id, quantity: $quantity, updateDependencies: $updateDependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToPreordersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.updateDependencies, updateDependencies) ||
                other.updateDependencies == updateDependencies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, updateDependencies);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToPreordersImplCopyWith<_$AddToPreordersImpl> get copyWith =>
      __$$AddToPreordersImplCopyWithImpl<_$AddToPreordersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return addToPreorders(id, quantity, updateDependencies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return addToPreorders?.call(id, quantity, updateDependencies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (addToPreorders != null) {
      return addToPreorders(id, quantity, updateDependencies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return addToPreorders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return addToPreorders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (addToPreorders != null) {
      return addToPreorders(this);
    }
    return orElse();
  }
}

abstract class _AddToPreorders implements PreordersEvent {
  const factory _AddToPreorders(final int id, final int quantity,
      {final bool updateDependencies}) = _$AddToPreordersImpl;

  int get id;
  int get quantity;
  bool get updateDependencies;
  @JsonKey(ignore: true)
  _$$AddToPreordersImplCopyWith<_$AddToPreordersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductInPreordersImplCopyWith<$Res> {
  factory _$$UpdateProductInPreordersImplCopyWith(
          _$UpdateProductInPreordersImpl value,
          $Res Function(_$UpdateProductInPreordersImpl) then) =
      __$$UpdateProductInPreordersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int quantity});
}

/// @nodoc
class __$$UpdateProductInPreordersImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$UpdateProductInPreordersImpl>
    implements _$$UpdateProductInPreordersImplCopyWith<$Res> {
  __$$UpdateProductInPreordersImplCopyWithImpl(
      _$UpdateProductInPreordersImpl _value,
      $Res Function(_$UpdateProductInPreordersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateProductInPreordersImpl(
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

class _$UpdateProductInPreordersImpl implements _UpdateProductInPreorders {
  const _$UpdateProductInPreordersImpl(this.id, this.quantity);

  @override
  final int id;
  @override
  final int quantity;

  @override
  String toString() {
    return 'PreordersEvent.updateProductInPreorders(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductInPreordersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductInPreordersImplCopyWith<_$UpdateProductInPreordersImpl>
      get copyWith => __$$UpdateProductInPreordersImplCopyWithImpl<
          _$UpdateProductInPreordersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return updateProductInPreorders(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return updateProductInPreorders?.call(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (updateProductInPreorders != null) {
      return updateProductInPreorders(id, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return updateProductInPreorders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return updateProductInPreorders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (updateProductInPreorders != null) {
      return updateProductInPreorders(this);
    }
    return orElse();
  }
}

abstract class _UpdateProductInPreorders implements PreordersEvent {
  const factory _UpdateProductInPreorders(final int id, final int quantity) =
      _$UpdateProductInPreordersImpl;

  int get id;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateProductInPreordersImplCopyWith<_$UpdateProductInPreordersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductInPreordersImplCopyWith<$Res> {
  factory _$$DeleteProductInPreordersImplCopyWith(
          _$DeleteProductInPreordersImpl value,
          $Res Function(_$DeleteProductInPreordersImpl) then) =
      __$$DeleteProductInPreordersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteProductInPreordersImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$DeleteProductInPreordersImpl>
    implements _$$DeleteProductInPreordersImplCopyWith<$Res> {
  __$$DeleteProductInPreordersImplCopyWithImpl(
      _$DeleteProductInPreordersImpl _value,
      $Res Function(_$DeleteProductInPreordersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProductInPreordersImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteProductInPreordersImpl implements _DeleteProductInPreorders {
  const _$DeleteProductInPreordersImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'PreordersEvent.deleteProductInPreorders(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductInPreordersImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductInPreordersImplCopyWith<_$DeleteProductInPreordersImpl>
      get copyWith => __$$DeleteProductInPreordersImplCopyWithImpl<
          _$DeleteProductInPreordersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return deleteProductInPreorders(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return deleteProductInPreorders?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductInPreorders != null) {
      return deleteProductInPreorders(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return deleteProductInPreorders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return deleteProductInPreorders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductInPreorders != null) {
      return deleteProductInPreorders(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductInPreorders implements PreordersEvent {
  const factory _DeleteProductInPreorders(final int id) =
      _$DeleteProductInPreordersImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteProductInPreordersImplCopyWith<_$DeleteProductInPreordersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductsInPreordersImplCopyWith<$Res> {
  factory _$$DeleteProductsInPreordersImplCopyWith(
          _$DeleteProductsInPreordersImpl value,
          $Res Function(_$DeleteProductsInPreordersImpl) then) =
      __$$DeleteProductsInPreordersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$DeleteProductsInPreordersImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$DeleteProductsInPreordersImpl>
    implements _$$DeleteProductsInPreordersImplCopyWith<$Res> {
  __$$DeleteProductsInPreordersImplCopyWithImpl(
      _$DeleteProductsInPreordersImpl _value,
      $Res Function(_$DeleteProductsInPreordersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$DeleteProductsInPreordersImpl(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DeleteProductsInPreordersImpl implements _DeleteProductsInPreorders {
  const _$DeleteProductsInPreordersImpl(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'PreordersEvent.deleteProductsInPreorders(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductsInPreordersImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductsInPreordersImplCopyWith<_$DeleteProductsInPreordersImpl>
      get copyWith => __$$DeleteProductsInPreordersImplCopyWithImpl<
          _$DeleteProductsInPreordersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return deleteProductsInPreorders(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return deleteProductsInPreorders?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductsInPreorders != null) {
      return deleteProductsInPreorders(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return deleteProductsInPreorders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return deleteProductsInPreorders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (deleteProductsInPreorders != null) {
      return deleteProductsInPreorders(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductsInPreorders implements PreordersEvent {
  const factory _DeleteProductsInPreorders(final List<int> ids) =
      _$DeleteProductsInPreordersImpl;

  List<int> get ids;
  @JsonKey(ignore: true)
  _$$DeleteProductsInPreordersImplCopyWith<_$DeleteProductsInPreordersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPreordersPriceImplCopyWith<$Res> {
  factory _$$GetPreordersPriceImplCopyWith(_$GetPreordersPriceImpl value,
          $Res Function(_$GetPreordersPriceImpl) then) =
      __$$GetPreordersPriceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPreordersPriceImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$GetPreordersPriceImpl>
    implements _$$GetPreordersPriceImplCopyWith<$Res> {
  __$$GetPreordersPriceImplCopyWithImpl(_$GetPreordersPriceImpl _value,
      $Res Function(_$GetPreordersPriceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPreordersPriceImpl implements _GetPreordersPrice {
  const _$GetPreordersPriceImpl();

  @override
  String toString() {
    return 'PreordersEvent.getPreordersPrice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPreordersPriceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return getPreordersPrice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return getPreordersPrice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (getPreordersPrice != null) {
      return getPreordersPrice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return getPreordersPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return getPreordersPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (getPreordersPrice != null) {
      return getPreordersPrice(this);
    }
    return orElse();
  }
}

abstract class _GetPreordersPrice implements PreordersEvent {
  const factory _GetPreordersPrice() = _$GetPreordersPriceImpl;
}

/// @nodoc
abstract class _$$GetPreordersProductsImplCopyWith<$Res> {
  factory _$$GetPreordersProductsImplCopyWith(_$GetPreordersProductsImpl value,
          $Res Function(_$GetPreordersProductsImpl) then) =
      __$$GetPreordersProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMore});
}

/// @nodoc
class __$$GetPreordersProductsImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$GetPreordersProductsImpl>
    implements _$$GetPreordersProductsImplCopyWith<$Res> {
  __$$GetPreordersProductsImplCopyWithImpl(_$GetPreordersProductsImpl _value,
      $Res Function(_$GetPreordersProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMore = null,
  }) {
    return _then(_$GetPreordersProductsImpl(
      isMore: null == isMore
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetPreordersProductsImpl implements _GetPreordersProducts {
  const _$GetPreordersProductsImpl({this.isMore = false});

  @override
  @JsonKey()
  final bool isMore;

  @override
  String toString() {
    return 'PreordersEvent.getPreordersProducts(isMore: $isMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPreordersProductsImpl &&
            (identical(other.isMore, isMore) || other.isMore == isMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPreordersProductsImplCopyWith<_$GetPreordersProductsImpl>
      get copyWith =>
          __$$GetPreordersProductsImplCopyWithImpl<_$GetPreordersProductsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() retry,
    required TResult Function(int id, int quantity, bool updateDependencies)
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return getPreordersProducts(isMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return getPreordersProducts?.call(isMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
    TResult Function()? toCheckout,
    required TResult orElse(),
  }) {
    if (getPreordersProducts != null) {
      return getPreordersProducts(isMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Retry value) retry,
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return getPreordersProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return getPreordersProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (getPreordersProducts != null) {
      return getPreordersProducts(this);
    }
    return orElse();
  }
}

abstract class _GetPreordersProducts implements PreordersEvent {
  const factory _GetPreordersProducts({final bool isMore}) =
      _$GetPreordersProductsImpl;

  bool get isMore;
  @JsonKey(ignore: true)
  _$$GetPreordersProductsImplCopyWith<_$GetPreordersProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToCheckoutImplCopyWith<$Res> {
  factory _$$ToCheckoutImplCopyWith(
          _$ToCheckoutImpl value, $Res Function(_$ToCheckoutImpl) then) =
      __$$ToCheckoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToCheckoutImplCopyWithImpl<$Res>
    extends _$PreordersEventCopyWithImpl<$Res, _$ToCheckoutImpl>
    implements _$$ToCheckoutImplCopyWith<$Res> {
  __$$ToCheckoutImplCopyWithImpl(
      _$ToCheckoutImpl _value, $Res Function(_$ToCheckoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToCheckoutImpl implements _ToCheckout {
  const _$ToCheckoutImpl();

  @override
  String toString() {
    return 'PreordersEvent.toCheckout()';
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
        addToPreorders,
    required TResult Function(int id, int quantity) updateProductInPreorders,
    required TResult Function(int id) deleteProductInPreorders,
    required TResult Function(List<int> ids) deleteProductsInPreorders,
    required TResult Function() getPreordersPrice,
    required TResult Function(bool isMore) getPreordersProducts,
    required TResult Function() toCheckout,
  }) {
    return toCheckout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? retry,
    TResult? Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult? Function(int id, int quantity)? updateProductInPreorders,
    TResult? Function(int id)? deleteProductInPreorders,
    TResult? Function(List<int> ids)? deleteProductsInPreorders,
    TResult? Function()? getPreordersPrice,
    TResult? Function(bool isMore)? getPreordersProducts,
    TResult? Function()? toCheckout,
  }) {
    return toCheckout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? retry,
    TResult Function(int id, int quantity, bool updateDependencies)?
        addToPreorders,
    TResult Function(int id, int quantity)? updateProductInPreorders,
    TResult Function(int id)? deleteProductInPreorders,
    TResult Function(List<int> ids)? deleteProductsInPreorders,
    TResult Function()? getPreordersPrice,
    TResult Function(bool isMore)? getPreordersProducts,
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
    required TResult Function(_AddToPreorders value) addToPreorders,
    required TResult Function(_UpdateProductInPreorders value)
        updateProductInPreorders,
    required TResult Function(_DeleteProductInPreorders value)
        deleteProductInPreorders,
    required TResult Function(_DeleteProductsInPreorders value)
        deleteProductsInPreorders,
    required TResult Function(_GetPreordersPrice value) getPreordersPrice,
    required TResult Function(_GetPreordersProducts value) getPreordersProducts,
    required TResult Function(_ToCheckout value) toCheckout,
  }) {
    return toCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Retry value)? retry,
    TResult? Function(_AddToPreorders value)? addToPreorders,
    TResult? Function(_UpdateProductInPreorders value)?
        updateProductInPreorders,
    TResult? Function(_DeleteProductInPreorders value)?
        deleteProductInPreorders,
    TResult? Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult? Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult? Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult? Function(_ToCheckout value)? toCheckout,
  }) {
    return toCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Retry value)? retry,
    TResult Function(_AddToPreorders value)? addToPreorders,
    TResult Function(_UpdateProductInPreorders value)? updateProductInPreorders,
    TResult Function(_DeleteProductInPreorders value)? deleteProductInPreorders,
    TResult Function(_DeleteProductsInPreorders value)?
        deleteProductsInPreorders,
    TResult Function(_GetPreordersPrice value)? getPreordersPrice,
    TResult Function(_GetPreordersProducts value)? getPreordersProducts,
    TResult Function(_ToCheckout value)? toCheckout,
    required TResult orElse(),
  }) {
    if (toCheckout != null) {
      return toCheckout(this);
    }
    return orElse();
  }
}

abstract class _ToCheckout implements PreordersEvent {
  const factory _ToCheckout() = _$ToCheckoutImpl;
}
