// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cart_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCartProductDto _$CreateCartProductDtoFromJson(Map<String, dynamic> json) {
  return _CreateCartProductDto.fromJson(json);
}

/// @nodoc
mixin _$CreateCartProductDto {
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCartProductDtoCopyWith<CreateCartProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartProductDtoCopyWith<$Res> {
  factory $CreateCartProductDtoCopyWith(CreateCartProductDto value,
          $Res Function(CreateCartProductDto) then) =
      _$CreateCartProductDtoCopyWithImpl<$Res, CreateCartProductDto>;
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class _$CreateCartProductDtoCopyWithImpl<$Res,
        $Val extends CreateCartProductDto>
    implements $CreateCartProductDtoCopyWith<$Res> {
  _$CreateCartProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCartProductDtoImplCopyWith<$Res>
    implements $CreateCartProductDtoCopyWith<$Res> {
  factory _$$CreateCartProductDtoImplCopyWith(_$CreateCartProductDtoImpl value,
          $Res Function(_$CreateCartProductDtoImpl) then) =
      __$$CreateCartProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$$CreateCartProductDtoImplCopyWithImpl<$Res>
    extends _$CreateCartProductDtoCopyWithImpl<$Res, _$CreateCartProductDtoImpl>
    implements _$$CreateCartProductDtoImplCopyWith<$Res> {
  __$$CreateCartProductDtoImplCopyWithImpl(_$CreateCartProductDtoImpl _value,
      $Res Function(_$CreateCartProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$CreateCartProductDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCartProductDtoImpl implements _CreateCartProductDto {
  _$CreateCartProductDtoImpl({required this.productId, required this.quantity});

  factory _$CreateCartProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCartProductDtoImplFromJson(json);

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CreateCartProductDto(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCartProductDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCartProductDtoImplCopyWith<_$CreateCartProductDtoImpl>
      get copyWith =>
          __$$CreateCartProductDtoImplCopyWithImpl<_$CreateCartProductDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCartProductDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateCartProductDto implements CreateCartProductDto {
  factory _CreateCartProductDto(
      {required final int productId,
      required final int quantity}) = _$CreateCartProductDtoImpl;

  factory _CreateCartProductDto.fromJson(Map<String, dynamic> json) =
      _$CreateCartProductDtoImpl.fromJson;

  @override
  int get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$CreateCartProductDtoImplCopyWith<_$CreateCartProductDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
