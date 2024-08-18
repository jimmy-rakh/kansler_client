// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stocks_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StocksDto _$StocksDtoFromJson(Map<String, dynamic> json) {
  return _ProductDataDto.fromJson(json);
}

/// @nodoc
mixin _$StocksDto {
  ProductDataDto? get stock => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get quantityReserve => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StocksDtoCopyWith<StocksDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksDtoCopyWith<$Res> {
  factory $StocksDtoCopyWith(StocksDto value, $Res Function(StocksDto) then) =
      _$StocksDtoCopyWithImpl<$Res, StocksDto>;
  @useResult
  $Res call({ProductDataDto? stock, int? quantity, int? quantityReserve});

  $ProductDataDtoCopyWith<$Res>? get stock;
}

/// @nodoc
class _$StocksDtoCopyWithImpl<$Res, $Val extends StocksDto>
    implements $StocksDtoCopyWith<$Res> {
  _$StocksDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = freezed,
    Object? quantity = freezed,
    Object? quantityReserve = freezed,
  }) {
    return _then(_value.copyWith(
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityReserve: freezed == quantityReserve
          ? _value.quantityReserve
          : quantityReserve // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataDtoCopyWith<$Res>? get stock {
    if (_value.stock == null) {
      return null;
    }

    return $ProductDataDtoCopyWith<$Res>(_value.stock!, (value) {
      return _then(_value.copyWith(stock: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDataDtoImplCopyWith<$Res>
    implements $StocksDtoCopyWith<$Res> {
  factory _$$ProductDataDtoImplCopyWith(_$ProductDataDtoImpl value,
          $Res Function(_$ProductDataDtoImpl) then) =
      __$$ProductDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDataDto? stock, int? quantity, int? quantityReserve});

  @override
  $ProductDataDtoCopyWith<$Res>? get stock;
}

/// @nodoc
class __$$ProductDataDtoImplCopyWithImpl<$Res>
    extends _$StocksDtoCopyWithImpl<$Res, _$ProductDataDtoImpl>
    implements _$$ProductDataDtoImplCopyWith<$Res> {
  __$$ProductDataDtoImplCopyWithImpl(
      _$ProductDataDtoImpl _value, $Res Function(_$ProductDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = freezed,
    Object? quantity = freezed,
    Object? quantityReserve = freezed,
  }) {
    return _then(_$ProductDataDtoImpl(
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityReserve: freezed == quantityReserve
          ? _value.quantityReserve
          : quantityReserve // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataDtoImpl extends _ProductDataDto {
  _$ProductDataDtoImpl({this.stock, this.quantity, this.quantityReserve})
      : super._();

  factory _$ProductDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataDtoImplFromJson(json);

  @override
  final ProductDataDto? stock;
  @override
  final int? quantity;
  @override
  final int? quantityReserve;

  @override
  String toString() {
    return 'StocksDto(stock: $stock, quantity: $quantity, quantityReserve: $quantityReserve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataDtoImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityReserve, quantityReserve) ||
                other.quantityReserve == quantityReserve));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, stock, quantity, quantityReserve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataDtoImplCopyWith<_$ProductDataDtoImpl> get copyWith =>
      __$$ProductDataDtoImplCopyWithImpl<_$ProductDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDataDto extends StocksDto {
  factory _ProductDataDto(
      {final ProductDataDto? stock,
      final int? quantity,
      final int? quantityReserve}) = _$ProductDataDtoImpl;
  _ProductDataDto._() : super._();

  factory _ProductDataDto.fromJson(Map<String, dynamic> json) =
      _$ProductDataDtoImpl.fromJson;

  @override
  ProductDataDto? get stock;
  @override
  int? get quantity;
  @override
  int? get quantityReserve;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataDtoImplCopyWith<_$ProductDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
