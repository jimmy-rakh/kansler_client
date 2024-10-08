// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsState {
  DetailsStatus get status => throw _privateConstructorUsedError;
  ProductEntity? get product => throw _privateConstructorUsedError;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call({DetailsStatus status, ProductEntity? product});

  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailsStatus,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ) as $Val);
  }

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductEntityCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsStateImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsStateImplCopyWith(
          _$DetailsStateImpl value, $Res Function(_$DetailsStateImpl) then) =
      __$$DetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DetailsStatus status, ProductEntity? product});

  @override
  $ProductEntityCopyWith<$Res>? get product;
}

/// @nodoc
class __$$DetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsStateImpl>
    implements _$$DetailsStateImplCopyWith<$Res> {
  __$$DetailsStateImplCopyWithImpl(
      _$DetailsStateImpl _value, $Res Function(_$DetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? product = freezed,
  }) {
    return _then(_$DetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailsStatus,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
    ));
  }
}

/// @nodoc

class _$DetailsStateImpl implements _DetailsState {
  const _$DetailsStateImpl({this.status = DetailsStatus.loading, this.product});

  @override
  @JsonKey()
  final DetailsStatus status;
  @override
  final ProductEntity? product;

  @override
  String toString() {
    return 'DetailsState(status: $status, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, product);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      __$$DetailsStateImplCopyWithImpl<_$DetailsStateImpl>(this, _$identity);
}

abstract class _DetailsState implements DetailsState {
  const factory _DetailsState(
      {final DetailsStatus status,
      final ProductEntity? product}) = _$DetailsStateImpl;

  @override
  DetailsStatus get status;
  @override
  ProductEntity? get product;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) setData,
    required TResult Function(int id) fetchProduct,
    required TResult Function() addToCart,
    required TResult Function() addToPreorder,
    required TResult Function() updateView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? setData,
    TResult? Function(int id)? fetchProduct,
    TResult? Function()? addToCart,
    TResult? Function()? addToPreorder,
    TResult? Function()? updateView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? setData,
    TResult Function(int id)? fetchProduct,
    TResult Function()? addToCart,
    TResult Function()? addToPreorder,
    TResult Function()? updateView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_AddToPreorder value) addToPreorder,
    required TResult Function(_UpdateView value) updateView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_AddToPreorder value)? addToPreorder,
    TResult? Function(_UpdateView value)? updateView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_AddToPreorder value)? addToPreorder,
    TResult Function(_UpdateView value)? updateView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res, DetailsEvent>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res, $Val extends DetailsEvent>
    implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetDataImplCopyWith<$Res> {
  factory _$$SetDataImplCopyWith(
          _$SetDataImpl value, $Res Function(_$SetDataImpl) then) =
      __$$SetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SetDataImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$SetDataImpl>
    implements _$$SetDataImplCopyWith<$Res> {
  __$$SetDataImplCopyWithImpl(
      _$SetDataImpl _value, $Res Function(_$SetDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SetDataImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetDataImpl implements _SetData {
  const _$SetDataImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DetailsEvent.setData(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDataImplCopyWith<_$SetDataImpl> get copyWith =>
      __$$SetDataImplCopyWithImpl<_$SetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) setData,
    required TResult Function(int id) fetchProduct,
    required TResult Function() addToCart,
    required TResult Function() addToPreorder,
    required TResult Function() updateView,
  }) {
    return setData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? setData,
    TResult? Function(int id)? fetchProduct,
    TResult? Function()? addToCart,
    TResult? Function()? addToPreorder,
    TResult? Function()? updateView,
  }) {
    return setData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? setData,
    TResult Function(int id)? fetchProduct,
    TResult Function()? addToCart,
    TResult Function()? addToPreorder,
    TResult Function()? updateView,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_AddToPreorder value) addToPreorder,
    required TResult Function(_UpdateView value) updateView,
  }) {
    return setData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_AddToPreorder value)? addToPreorder,
    TResult? Function(_UpdateView value)? updateView,
  }) {
    return setData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_AddToPreorder value)? addToPreorder,
    TResult Function(_UpdateView value)? updateView,
    required TResult orElse(),
  }) {
    if (setData != null) {
      return setData(this);
    }
    return orElse();
  }
}

abstract class _SetData implements DetailsEvent {
  const factory _SetData(final int id) = _$SetDataImpl;

  int get id;

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDataImplCopyWith<_$SetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductImplCopyWith<$Res> {
  factory _$$FetchProductImplCopyWith(
          _$FetchProductImpl value, $Res Function(_$FetchProductImpl) then) =
      __$$FetchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchProductImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$FetchProductImpl>
    implements _$$FetchProductImplCopyWith<$Res> {
  __$$FetchProductImplCopyWithImpl(
      _$FetchProductImpl _value, $Res Function(_$FetchProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchProductImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchProductImpl implements _FetchProduct {
  const _$FetchProductImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DetailsEvent.fetchProduct(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductImplCopyWith<_$FetchProductImpl> get copyWith =>
      __$$FetchProductImplCopyWithImpl<_$FetchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) setData,
    required TResult Function(int id) fetchProduct,
    required TResult Function() addToCart,
    required TResult Function() addToPreorder,
    required TResult Function() updateView,
  }) {
    return fetchProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? setData,
    TResult? Function(int id)? fetchProduct,
    TResult? Function()? addToCart,
    TResult? Function()? addToPreorder,
    TResult? Function()? updateView,
  }) {
    return fetchProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? setData,
    TResult Function(int id)? fetchProduct,
    TResult Function()? addToCart,
    TResult Function()? addToPreorder,
    TResult Function()? updateView,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_AddToPreorder value) addToPreorder,
    required TResult Function(_UpdateView value) updateView,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_AddToPreorder value)? addToPreorder,
    TResult? Function(_UpdateView value)? updateView,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_AddToPreorder value)? addToPreorder,
    TResult Function(_UpdateView value)? updateView,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchProduct implements DetailsEvent {
  const factory _FetchProduct(final int id) = _$FetchProductImpl;

  int get id;

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchProductImplCopyWith<_$FetchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl();

  @override
  String toString() {
    return 'DetailsEvent.addToCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) setData,
    required TResult Function(int id) fetchProduct,
    required TResult Function() addToCart,
    required TResult Function() addToPreorder,
    required TResult Function() updateView,
  }) {
    return addToCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? setData,
    TResult? Function(int id)? fetchProduct,
    TResult? Function()? addToCart,
    TResult? Function()? addToPreorder,
    TResult? Function()? updateView,
  }) {
    return addToCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? setData,
    TResult Function(int id)? fetchProduct,
    TResult Function()? addToCart,
    TResult Function()? addToPreorder,
    TResult Function()? updateView,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_AddToPreorder value) addToPreorder,
    required TResult Function(_UpdateView value) updateView,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_AddToPreorder value)? addToPreorder,
    TResult? Function(_UpdateView value)? updateView,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_AddToPreorder value)? addToPreorder,
    TResult Function(_UpdateView value)? updateView,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements DetailsEvent {
  const factory _AddToCart() = _$AddToCartImpl;
}

/// @nodoc
abstract class _$$AddToPreorderImplCopyWith<$Res> {
  factory _$$AddToPreorderImplCopyWith(
          _$AddToPreorderImpl value, $Res Function(_$AddToPreorderImpl) then) =
      __$$AddToPreorderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToPreorderImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$AddToPreorderImpl>
    implements _$$AddToPreorderImplCopyWith<$Res> {
  __$$AddToPreorderImplCopyWithImpl(
      _$AddToPreorderImpl _value, $Res Function(_$AddToPreorderImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToPreorderImpl implements _AddToPreorder {
  const _$AddToPreorderImpl();

  @override
  String toString() {
    return 'DetailsEvent.addToPreorder()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToPreorderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) setData,
    required TResult Function(int id) fetchProduct,
    required TResult Function() addToCart,
    required TResult Function() addToPreorder,
    required TResult Function() updateView,
  }) {
    return addToPreorder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? setData,
    TResult? Function(int id)? fetchProduct,
    TResult? Function()? addToCart,
    TResult? Function()? addToPreorder,
    TResult? Function()? updateView,
  }) {
    return addToPreorder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? setData,
    TResult Function(int id)? fetchProduct,
    TResult Function()? addToCart,
    TResult Function()? addToPreorder,
    TResult Function()? updateView,
    required TResult orElse(),
  }) {
    if (addToPreorder != null) {
      return addToPreorder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_AddToPreorder value) addToPreorder,
    required TResult Function(_UpdateView value) updateView,
  }) {
    return addToPreorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_AddToPreorder value)? addToPreorder,
    TResult? Function(_UpdateView value)? updateView,
  }) {
    return addToPreorder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_AddToPreorder value)? addToPreorder,
    TResult Function(_UpdateView value)? updateView,
    required TResult orElse(),
  }) {
    if (addToPreorder != null) {
      return addToPreorder(this);
    }
    return orElse();
  }
}

abstract class _AddToPreorder implements DetailsEvent {
  const factory _AddToPreorder() = _$AddToPreorderImpl;
}

/// @nodoc
abstract class _$$UpdateViewImplCopyWith<$Res> {
  factory _$$UpdateViewImplCopyWith(
          _$UpdateViewImpl value, $Res Function(_$UpdateViewImpl) then) =
      __$$UpdateViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateViewImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$UpdateViewImpl>
    implements _$$UpdateViewImplCopyWith<$Res> {
  __$$UpdateViewImplCopyWithImpl(
      _$UpdateViewImpl _value, $Res Function(_$UpdateViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateViewImpl implements _UpdateView {
  const _$UpdateViewImpl();

  @override
  String toString() {
    return 'DetailsEvent.updateView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) setData,
    required TResult Function(int id) fetchProduct,
    required TResult Function() addToCart,
    required TResult Function() addToPreorder,
    required TResult Function() updateView,
  }) {
    return updateView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? setData,
    TResult? Function(int id)? fetchProduct,
    TResult? Function()? addToCart,
    TResult? Function()? addToPreorder,
    TResult? Function()? updateView,
  }) {
    return updateView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? setData,
    TResult Function(int id)? fetchProduct,
    TResult Function()? addToCart,
    TResult Function()? addToPreorder,
    TResult Function()? updateView,
    required TResult orElse(),
  }) {
    if (updateView != null) {
      return updateView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetData value) setData,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_AddToPreorder value) addToPreorder,
    required TResult Function(_UpdateView value) updateView,
  }) {
    return updateView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetData value)? setData,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_AddToPreorder value)? addToPreorder,
    TResult? Function(_UpdateView value)? updateView,
  }) {
    return updateView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetData value)? setData,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_AddToPreorder value)? addToPreorder,
    TResult Function(_UpdateView value)? updateView,
    required TResult orElse(),
  }) {
    if (updateView != null) {
      return updateView(this);
    }
    return orElse();
  }
}

abstract class _UpdateView implements DetailsEvent {
  const factory _UpdateView() = _$UpdateViewImpl;
}
