// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartProduct {
  int get id => throw _privateConstructorUsedError;
  ProductEntity? get product => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int? get priceDiscount => throw _privateConstructorUsedError;
  ContractorEntity? get contractor => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {int id,
      ProductEntity? product,
      String? name,
      int quantity,
      int? priceDiscount,
      ContractorEntity? contractor,
      int price});

  $ProductEntityCopyWith<$Res>? get product;
  $ContractorEntityCopyWith<$Res>? get contractor;
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = freezed,
    Object? name = freezed,
    Object? quantity = null,
    Object? priceDiscount = freezed,
    Object? contractor = freezed,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      priceDiscount: freezed == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as ContractorEntity?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of CartProduct
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

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractorEntityCopyWith<$Res>? get contractor {
    if (_value.contractor == null) {
      return null;
    }

    return $ContractorEntityCopyWith<$Res>(_value.contractor!, (value) {
      return _then(_value.copyWith(contractor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductImplCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$CartProductImplCopyWith(
          _$CartProductImpl value, $Res Function(_$CartProductImpl) then) =
      __$$CartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ProductEntity? product,
      String? name,
      int quantity,
      int? priceDiscount,
      ContractorEntity? contractor,
      int price});

  @override
  $ProductEntityCopyWith<$Res>? get product;
  @override
  $ContractorEntityCopyWith<$Res>? get contractor;
}

/// @nodoc
class __$$CartProductImplCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$CartProductImpl>
    implements _$$CartProductImplCopyWith<$Res> {
  __$$CartProductImplCopyWithImpl(
      _$CartProductImpl _value, $Res Function(_$CartProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = freezed,
    Object? name = freezed,
    Object? quantity = null,
    Object? priceDiscount = freezed,
    Object? contractor = freezed,
    Object? price = null,
  }) {
    return _then(_$CartProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      priceDiscount: freezed == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as ContractorEntity?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartProductImpl implements _CartProduct {
  _$CartProductImpl(
      {required this.id,
      this.product,
      this.name,
      required this.quantity,
      this.priceDiscount,
      this.contractor,
      required this.price});

  @override
  final int id;
  @override
  final ProductEntity? product;
  @override
  final String? name;
  @override
  final int quantity;
  @override
  final int? priceDiscount;
  @override
  final ContractorEntity? contractor;
  @override
  final int price;

  @override
  String toString() {
    return 'CartProduct(id: $id, product: $product, name: $name, quantity: $quantity, priceDiscount: $priceDiscount, contractor: $contractor, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.priceDiscount, priceDiscount) ||
                other.priceDiscount == priceDiscount) &&
            (identical(other.contractor, contractor) ||
                other.contractor == contractor) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, product, name, quantity,
      priceDiscount, contractor, price);

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      __$$CartProductImplCopyWithImpl<_$CartProductImpl>(this, _$identity);
}

abstract class _CartProduct implements CartProduct {
  factory _CartProduct(
      {required final int id,
      final ProductEntity? product,
      final String? name,
      required final int quantity,
      final int? priceDiscount,
      final ContractorEntity? contractor,
      required final int price}) = _$CartProductImpl;

  @override
  int get id;
  @override
  ProductEntity? get product;
  @override
  String? get name;
  @override
  int get quantity;
  @override
  int? get priceDiscount;
  @override
  ContractorEntity? get contractor;
  @override
  int get price;

  /// Create a copy of CartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
