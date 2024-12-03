// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contractor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contractor _$ContractorFromJson(Map<String, dynamic> json) {
  return _Contractor.fromJson(json);
}

/// @nodoc
mixin _$Contractor {
  int? get price => throw _privateConstructorUsedError;
  List<StocksDto>? get stocks => throw _privateConstructorUsedError;

  /// Serializes this Contractor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contractor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContractorCopyWith<Contractor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractorCopyWith<$Res> {
  factory $ContractorCopyWith(
          Contractor value, $Res Function(Contractor) then) =
      _$ContractorCopyWithImpl<$Res, Contractor>;
  @useResult
  $Res call({int? price, List<StocksDto>? stocks});
}

/// @nodoc
class _$ContractorCopyWithImpl<$Res, $Val extends Contractor>
    implements $ContractorCopyWith<$Res> {
  _$ContractorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contractor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? stocks = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StocksDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractorImplCopyWith<$Res>
    implements $ContractorCopyWith<$Res> {
  factory _$$ContractorImplCopyWith(
          _$ContractorImpl value, $Res Function(_$ContractorImpl) then) =
      __$$ContractorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? price, List<StocksDto>? stocks});
}

/// @nodoc
class __$$ContractorImplCopyWithImpl<$Res>
    extends _$ContractorCopyWithImpl<$Res, _$ContractorImpl>
    implements _$$ContractorImplCopyWith<$Res> {
  __$$ContractorImplCopyWithImpl(
      _$ContractorImpl _value, $Res Function(_$ContractorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contractor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? stocks = freezed,
  }) {
    return _then(_$ContractorImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stocks: freezed == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StocksDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractorImpl extends _Contractor {
  _$ContractorImpl({this.price, final List<StocksDto>? stocks})
      : _stocks = stocks,
        super._();

  factory _$ContractorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractorImplFromJson(json);

  @override
  final int? price;
  final List<StocksDto>? _stocks;
  @override
  List<StocksDto>? get stocks {
    final value = _stocks;
    if (value == null) return null;
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Contractor(price: $price, stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractorImpl &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, price, const DeepCollectionEquality().hash(_stocks));

  /// Create a copy of Contractor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractorImplCopyWith<_$ContractorImpl> get copyWith =>
      __$$ContractorImplCopyWithImpl<_$ContractorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractorImplToJson(
      this,
    );
  }
}

abstract class _Contractor extends Contractor {
  factory _Contractor({final int? price, final List<StocksDto>? stocks}) =
      _$ContractorImpl;
  _Contractor._() : super._();

  factory _Contractor.fromJson(Map<String, dynamic> json) =
      _$ContractorImpl.fromJson;

  @override
  int? get price;
  @override
  List<StocksDto>? get stocks;

  /// Create a copy of Contractor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContractorImplCopyWith<_$ContractorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
