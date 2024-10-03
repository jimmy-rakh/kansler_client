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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(PreordersStatus status,
            List<CartProduct> products, int? price, bool isMoreLoading)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(PreordersStatus status, List<CartProduct> products,
            int? price, bool isMoreLoading)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(PreordersStatus status, List<CartProduct> products,
            int? price, bool isMoreLoading)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreordersStateCopyWith<$Res> {
  factory $PreordersStateCopyWith(
          PreordersState value, $Res Function(PreordersState) then) =
      _$PreordersStateCopyWithImpl<$Res, PreordersState>;
}

/// @nodoc
class _$PreordersStateCopyWithImpl<$Res, $Val extends PreordersState>
    implements $PreordersStateCopyWith<$Res> {
  _$PreordersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreordersState
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
    extends _$PreordersStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreordersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PreordersState.loadInProgress'));
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
    required TResult Function(PreordersStatus status,
            List<CartProduct> products, int? price, bool isMoreLoading)
        ready,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(PreordersStatus status, List<CartProduct> products,
            int? price, bool isMoreLoading)?
        ready,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(PreordersStatus status, List<CartProduct> products,
            int? price, bool isMoreLoading)?
        ready,
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
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PreordersState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PreordersStatus status,
      List<CartProduct> products,
      int? price,
      bool isMoreLoading});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$PreordersStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreordersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = null,
    Object? price = freezed,
    Object? isMoreLoading = null,
  }) {
    return _then(_$ReadyImpl(
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

class _$ReadyImpl with DiagnosticableTreeMixin implements _Ready {
  const _$ReadyImpl(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersState.ready(status: $status, products: $products, price: $price, isMoreLoading: $isMoreLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreordersState.ready'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('isMoreLoading', isMoreLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_products), price, isMoreLoading);

  /// Create a copy of PreordersState
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
    required TResult Function(PreordersStatus status,
            List<CartProduct> products, int? price, bool isMoreLoading)
        ready,
  }) {
    return ready(status, products, price, isMoreLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(PreordersStatus status, List<CartProduct> products,
            int? price, bool isMoreLoading)?
        ready,
  }) {
    return ready?.call(status, products, price, isMoreLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(PreordersStatus status, List<CartProduct> products,
            int? price, bool isMoreLoading)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(status, products, price, isMoreLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements PreordersState {
  const factory _Ready(
      {final PreordersStatus status,
      final List<CartProduct> products,
      final int? price,
      final bool isMoreLoading}) = _$ReadyImpl;

  PreordersStatus get status;
  List<CartProduct> get products;
  int? get price;
  bool get isMoreLoading;

  /// Create a copy of PreordersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
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

  /// Create a copy of PreordersEvent
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
    extends _$PreordersEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryImpl with DiagnosticableTreeMixin implements _Retry {
  const _$RetryImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.retry()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PreordersEvent.retry'));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
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

class _$AddToPreordersImpl
    with DiagnosticableTreeMixin
    implements _AddToPreorders {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.addToPreorders(id: $id, quantity: $quantity, updateDependencies: $updateDependencies)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreordersEvent.addToPreorders'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('updateDependencies', updateDependencies));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
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

class _$UpdateProductInPreordersImpl
    with DiagnosticableTreeMixin
    implements _UpdateProductInPreorders {
  const _$UpdateProductInPreordersImpl(this.id, this.quantity);

  @override
  final int id;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.updateProductInPreorders(id: $id, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PreordersEvent.updateProductInPreorders'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('quantity', quantity));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
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

class _$DeleteProductInPreordersImpl
    with DiagnosticableTreeMixin
    implements _DeleteProductInPreorders {
  const _$DeleteProductInPreordersImpl(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.deleteProductInPreorders(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PreordersEvent.deleteProductInPreorders'))
      ..add(DiagnosticsProperty('id', id));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
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

class _$DeleteProductsInPreordersImpl
    with DiagnosticableTreeMixin
    implements _DeleteProductsInPreorders {
  const _$DeleteProductsInPreordersImpl(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.deleteProductsInPreorders(ids: $ids)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PreordersEvent.deleteProductsInPreorders'))
      ..add(DiagnosticsProperty('ids', ids));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPreordersPriceImpl
    with DiagnosticableTreeMixin
    implements _GetPreordersPrice {
  const _$GetPreordersPriceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.getPreordersPrice()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PreordersEvent.getPreordersPrice'));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
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

class _$GetPreordersProductsImpl
    with DiagnosticableTreeMixin
    implements _GetPreordersProducts {
  const _$GetPreordersProductsImpl({this.isMore = false});

  @override
  @JsonKey()
  final bool isMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.getPreordersProducts(isMore: $isMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PreordersEvent.getPreordersProducts'))
      ..add(DiagnosticsProperty('isMore', isMore));
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PreordersEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToCheckoutImpl with DiagnosticableTreeMixin implements _ToCheckout {
  const _$ToCheckoutImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PreordersEvent.toCheckout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PreordersEvent.toCheckout'));
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
