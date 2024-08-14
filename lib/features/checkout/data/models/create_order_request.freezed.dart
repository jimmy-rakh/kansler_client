// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateOrderRequest {
  int get companyId => throw _privateConstructorUsedError;
  List<int>? get cartProduct => throw _privateConstructorUsedError;

  /// Serializes this CreateOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateOrderRequestCopyWith<CreateOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderRequestCopyWith<$Res> {
  factory $CreateOrderRequestCopyWith(
          CreateOrderRequest value, $Res Function(CreateOrderRequest) then) =
      _$CreateOrderRequestCopyWithImpl<$Res, CreateOrderRequest>;
  @useResult
  $Res call({int companyId, List<int>? cartProduct});
}

/// @nodoc
class _$CreateOrderRequestCopyWithImpl<$Res, $Val extends CreateOrderRequest>
    implements $CreateOrderRequestCopyWith<$Res> {
  _$CreateOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? cartProduct = freezed,
  }) {
    return _then(_value.copyWith(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      cartProduct: freezed == cartProduct
          ? _value.cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderRequestImplCopyWith<$Res>
    implements $CreateOrderRequestCopyWith<$Res> {
  factory _$$CreateOrderRequestImplCopyWith(_$CreateOrderRequestImpl value,
          $Res Function(_$CreateOrderRequestImpl) then) =
      __$$CreateOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int companyId, List<int>? cartProduct});
}

/// @nodoc
class __$$CreateOrderRequestImplCopyWithImpl<$Res>
    extends _$CreateOrderRequestCopyWithImpl<$Res, _$CreateOrderRequestImpl>
    implements _$$CreateOrderRequestImplCopyWith<$Res> {
  __$$CreateOrderRequestImplCopyWithImpl(_$CreateOrderRequestImpl _value,
      $Res Function(_$CreateOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyId = null,
    Object? cartProduct = freezed,
  }) {
    return _then(_$CreateOrderRequestImpl(
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      cartProduct: freezed == cartProduct
          ? _value._cartProduct
          : cartProduct // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$CreateOrderRequestImpl implements _CreateOrderRequest {
  _$CreateOrderRequestImpl(
      {required this.companyId, final List<int>? cartProduct})
      : _cartProduct = cartProduct;

  @override
  final int companyId;
  final List<int>? _cartProduct;
  @override
  List<int>? get cartProduct {
    final value = _cartProduct;
    if (value == null) return null;
    if (_cartProduct is EqualUnmodifiableListView) return _cartProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateOrderRequest(companyId: $companyId, cartProduct: $cartProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderRequestImpl &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            const DeepCollectionEquality()
                .equals(other._cartProduct, _cartProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, companyId,
      const DeepCollectionEquality().hash(_cartProduct));

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderRequestImplCopyWith<_$CreateOrderRequestImpl> get copyWith =>
      __$$CreateOrderRequestImplCopyWithImpl<_$CreateOrderRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderRequest implements CreateOrderRequest {
  factory _CreateOrderRequest(
      {required final int companyId,
      final List<int>? cartProduct}) = _$CreateOrderRequestImpl;

  @override
  int get companyId;
  @override
  List<int>? get cartProduct;

  /// Create a copy of CreateOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateOrderRequestImplCopyWith<_$CreateOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
