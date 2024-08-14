// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartProductDto _$CartProductDtoFromJson(Map<String, dynamic> json) {
  return _CartProductDto.fromJson(json);
}

/// @nodoc
mixin _$CartProductDto {
  int get id => throw _privateConstructorUsedError;
  ProductDto? get product => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  /// Serializes this CartProductDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductDtoCopyWith<CartProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDtoCopyWith<$Res> {
  factory $CartProductDtoCopyWith(
          CartProductDto value, $Res Function(CartProductDto) then) =
      _$CartProductDtoCopyWithImpl<$Res, CartProductDto>;
  @useResult
  $Res call(
      {int id, ProductDto? product, String? name, int quantity, int price});

  $ProductDtoCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartProductDtoCopyWithImpl<$Res, $Val extends CartProductDto>
    implements $CartProductDtoCopyWith<$Res> {
  _$CartProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = freezed,
    Object? name = freezed,
    Object? quantity = null,
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
              as ProductDto?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of CartProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDtoCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductDtoImplCopyWith<$Res>
    implements $CartProductDtoCopyWith<$Res> {
  factory _$$CartProductDtoImplCopyWith(_$CartProductDtoImpl value,
          $Res Function(_$CartProductDtoImpl) then) =
      __$$CartProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, ProductDto? product, String? name, int quantity, int price});

  @override
  $ProductDtoCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartProductDtoImplCopyWithImpl<$Res>
    extends _$CartProductDtoCopyWithImpl<$Res, _$CartProductDtoImpl>
    implements _$$CartProductDtoImplCopyWith<$Res> {
  __$$CartProductDtoImplCopyWithImpl(
      _$CartProductDtoImpl _value, $Res Function(_$CartProductDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = freezed,
    Object? name = freezed,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_$CartProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductDtoImpl extends _CartProductDto {
  _$CartProductDtoImpl(
      {required this.id,
      this.product,
      this.name,
      required this.quantity,
      required this.price})
      : super._();

  factory _$CartProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductDtoImplFromJson(json);

  @override
  final int id;
  @override
  final ProductDto? product;
  @override
  final String? name;
  @override
  final int quantity;
  @override
  final int price;

  @override
  String toString() {
    return 'CartProductDto(id: $id, product: $product, name: $name, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, product, name, quantity, price);

  /// Create a copy of CartProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductDtoImplCopyWith<_$CartProductDtoImpl> get copyWith =>
      __$$CartProductDtoImplCopyWithImpl<_$CartProductDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductDtoImplToJson(
      this,
    );
  }
}

abstract class _CartProductDto extends CartProductDto {
  factory _CartProductDto(
      {required final int id,
      final ProductDto? product,
      final String? name,
      required final int quantity,
      required final int price}) = _$CartProductDtoImpl;
  _CartProductDto._() : super._();

  factory _CartProductDto.fromJson(Map<String, dynamic> json) =
      _$CartProductDtoImpl.fromJson;

  @override
  int get id;
  @override
  ProductDto? get product;
  @override
  String? get name;
  @override
  int get quantity;
  @override
  int get price;

  /// Create a copy of CartProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductDtoImplCopyWith<_$CartProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
