// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_cart_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateCartProduct _$UpdateCartProductFromJson(Map<String, dynamic> json) {
  return _UpdateCartProduct.fromJson(json);
}

/// @nodoc
mixin _$UpdateCartProduct {
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this UpdateCartProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateCartProductCopyWith<UpdateCartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartProductCopyWith<$Res> {
  factory $UpdateCartProductCopyWith(
          UpdateCartProduct value, $Res Function(UpdateCartProduct) then) =
      _$UpdateCartProductCopyWithImpl<$Res, UpdateCartProduct>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class _$UpdateCartProductCopyWithImpl<$Res, $Val extends UpdateCartProduct>
    implements $UpdateCartProductCopyWith<$Res> {
  _$UpdateCartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateCartProductImplCopyWith<$Res>
    implements $UpdateCartProductCopyWith<$Res> {
  factory _$$UpdateCartProductImplCopyWith(_$UpdateCartProductImpl value,
          $Res Function(_$UpdateCartProductImpl) then) =
      __$$UpdateCartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$UpdateCartProductImplCopyWithImpl<$Res>
    extends _$UpdateCartProductCopyWithImpl<$Res, _$UpdateCartProductImpl>
    implements _$$UpdateCartProductImplCopyWith<$Res> {
  __$$UpdateCartProductImplCopyWithImpl(_$UpdateCartProductImpl _value,
      $Res Function(_$UpdateCartProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$UpdateCartProductImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateCartProductImpl implements _UpdateCartProduct {
  _$UpdateCartProductImpl({required this.quantity});

  factory _$UpdateCartProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateCartProductImplFromJson(json);

  @override
  final int quantity;

  @override
  String toString() {
    return 'UpdateCartProduct(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartProductImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  /// Create a copy of UpdateCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartProductImplCopyWith<_$UpdateCartProductImpl> get copyWith =>
      __$$UpdateCartProductImplCopyWithImpl<_$UpdateCartProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateCartProductImplToJson(
      this,
    );
  }
}

abstract class _UpdateCartProduct implements UpdateCartProduct {
  factory _UpdateCartProduct({required final int quantity}) =
      _$UpdateCartProductImpl;

  factory _UpdateCartProduct.fromJson(Map<String, dynamic> json) =
      _$UpdateCartProductImpl.fromJson;

  @override
  int get quantity;

  /// Create a copy of UpdateCartProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCartProductImplCopyWith<_$UpdateCartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
