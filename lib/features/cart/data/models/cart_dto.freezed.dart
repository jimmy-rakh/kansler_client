// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartDto _$CartDtoFromJson(Map<String, dynamic> json) {
  return _CartDto.fromJson(json);
}

/// @nodoc
mixin _$CartDto {
  int get price => throw _privateConstructorUsedError;

  /// Serializes this CartDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartDtoCopyWith<CartDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDtoCopyWith<$Res> {
  factory $CartDtoCopyWith(CartDto value, $Res Function(CartDto) then) =
      _$CartDtoCopyWithImpl<$Res, CartDto>;
  @useResult
  $Res call({int price});
}

/// @nodoc
class _$CartDtoCopyWithImpl<$Res, $Val extends CartDto>
    implements $CartDtoCopyWith<$Res> {
  _$CartDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartDtoImplCopyWith<$Res> implements $CartDtoCopyWith<$Res> {
  factory _$$CartDtoImplCopyWith(
          _$CartDtoImpl value, $Res Function(_$CartDtoImpl) then) =
      __$$CartDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price});
}

/// @nodoc
class __$$CartDtoImplCopyWithImpl<$Res>
    extends _$CartDtoCopyWithImpl<$Res, _$CartDtoImpl>
    implements _$$CartDtoImplCopyWith<$Res> {
  __$$CartDtoImplCopyWithImpl(
      _$CartDtoImpl _value, $Res Function(_$CartDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$CartDtoImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartDtoImpl implements _CartDto {
  _$CartDtoImpl({required this.price});

  factory _$CartDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartDtoImplFromJson(json);

  @override
  final int price;

  @override
  String toString() {
    return 'CartDto(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDtoImpl &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  /// Create a copy of CartDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDtoImplCopyWith<_$CartDtoImpl> get copyWith =>
      __$$CartDtoImplCopyWithImpl<_$CartDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartDtoImplToJson(
      this,
    );
  }
}

abstract class _CartDto implements CartDto {
  factory _CartDto({required final int price}) = _$CartDtoImpl;

  factory _CartDto.fromJson(Map<String, dynamic> json) = _$CartDtoImpl.fromJson;

  @override
  int get price;

  /// Create a copy of CartDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartDtoImplCopyWith<_$CartDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
