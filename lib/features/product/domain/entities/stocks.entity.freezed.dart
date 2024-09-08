// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stocks.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StocksDtoEntity {
  ProductDataEntity get stock => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get quantityReserve => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StocksDtoEntityCopyWith<StocksDtoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksDtoEntityCopyWith<$Res> {
  factory $StocksDtoEntityCopyWith(
          StocksDtoEntity value, $Res Function(StocksDtoEntity) then) =
      _$StocksDtoEntityCopyWithImpl<$Res, StocksDtoEntity>;
  @useResult
  $Res call({ProductDataEntity stock, int quantity, int quantityReserve});

  $ProductDataEntityCopyWith<$Res> get stock;
}

/// @nodoc
class _$StocksDtoEntityCopyWithImpl<$Res, $Val extends StocksDtoEntity>
    implements $StocksDtoEntityCopyWith<$Res> {
  _$StocksDtoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? quantity = null,
    Object? quantityReserve = null,
  }) {
    return _then(_value.copyWith(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as ProductDataEntity,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantityReserve: null == quantityReserve
          ? _value.quantityReserve
          : quantityReserve // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataEntityCopyWith<$Res> get stock {
    return $ProductDataEntityCopyWith<$Res>(_value.stock, (value) {
      return _then(_value.copyWith(stock: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StocksDtoEntityImplCopyWith<$Res>
    implements $StocksDtoEntityCopyWith<$Res> {
  factory _$$StocksDtoEntityImplCopyWith(_$StocksDtoEntityImpl value,
          $Res Function(_$StocksDtoEntityImpl) then) =
      __$$StocksDtoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDataEntity stock, int quantity, int quantityReserve});

  @override
  $ProductDataEntityCopyWith<$Res> get stock;
}

/// @nodoc
class __$$StocksDtoEntityImplCopyWithImpl<$Res>
    extends _$StocksDtoEntityCopyWithImpl<$Res, _$StocksDtoEntityImpl>
    implements _$$StocksDtoEntityImplCopyWith<$Res> {
  __$$StocksDtoEntityImplCopyWithImpl(
      _$StocksDtoEntityImpl _value, $Res Function(_$StocksDtoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = null,
    Object? quantity = null,
    Object? quantityReserve = null,
  }) {
    return _then(_$StocksDtoEntityImpl(
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as ProductDataEntity,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      quantityReserve: null == quantityReserve
          ? _value.quantityReserve
          : quantityReserve // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StocksDtoEntityImpl implements _StocksDtoEntity {
  _$StocksDtoEntityImpl(
      {required this.stock,
      required this.quantity,
      required this.quantityReserve});

  @override
  final ProductDataEntity stock;
  @override
  final int quantity;
  @override
  final int quantityReserve;

  @override
  String toString() {
    return 'StocksDtoEntity(stock: $stock, quantity: $quantity, quantityReserve: $quantityReserve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StocksDtoEntityImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityReserve, quantityReserve) ||
                other.quantityReserve == quantityReserve));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, stock, quantity, quantityReserve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StocksDtoEntityImplCopyWith<_$StocksDtoEntityImpl> get copyWith =>
      __$$StocksDtoEntityImplCopyWithImpl<_$StocksDtoEntityImpl>(
          this, _$identity);
}

abstract class _StocksDtoEntity implements StocksDtoEntity {
  factory _StocksDtoEntity(
      {required final ProductDataEntity stock,
      required final int quantity,
      required final int quantityReserve}) = _$StocksDtoEntityImpl;

  @override
  ProductDataEntity get stock;
  @override
  int get quantity;
  @override
  int get quantityReserve;
  @override
  @JsonKey(ignore: true)
  _$$StocksDtoEntityImplCopyWith<_$StocksDtoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
