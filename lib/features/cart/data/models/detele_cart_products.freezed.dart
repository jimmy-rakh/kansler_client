// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detele_cart_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeteleCartProducts _$DeteleCartProductsFromJson(Map<String, dynamic> json) {
  return _DeteleCartProducts.fromJson(json);
}

/// @nodoc
mixin _$DeteleCartProducts {
  List<int> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeteleCartProductsCopyWith<DeteleCartProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeteleCartProductsCopyWith<$Res> {
  factory $DeteleCartProductsCopyWith(
          DeteleCartProducts value, $Res Function(DeteleCartProducts) then) =
      _$DeteleCartProductsCopyWithImpl<$Res, DeteleCartProducts>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class _$DeteleCartProductsCopyWithImpl<$Res, $Val extends DeteleCartProducts>
    implements $DeteleCartProductsCopyWith<$Res> {
  _$DeteleCartProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeteleCartProductsImplCopyWith<$Res>
    implements $DeteleCartProductsCopyWith<$Res> {
  factory _$$DeteleCartProductsImplCopyWith(_$DeteleCartProductsImpl value,
          $Res Function(_$DeteleCartProductsImpl) then) =
      __$$DeteleCartProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$DeteleCartProductsImplCopyWithImpl<$Res>
    extends _$DeteleCartProductsCopyWithImpl<$Res, _$DeteleCartProductsImpl>
    implements _$$DeteleCartProductsImplCopyWith<$Res> {
  __$$DeteleCartProductsImplCopyWithImpl(_$DeteleCartProductsImpl _value,
      $Res Function(_$DeteleCartProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$DeteleCartProductsImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeteleCartProductsImpl implements _DeteleCartProducts {
  _$DeteleCartProductsImpl({required final List<int> ids}) : _ids = ids;

  factory _$DeteleCartProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeteleCartProductsImplFromJson(json);

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'DeteleCartProducts(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeteleCartProductsImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeteleCartProductsImplCopyWith<_$DeteleCartProductsImpl> get copyWith =>
      __$$DeteleCartProductsImplCopyWithImpl<_$DeteleCartProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeteleCartProductsImplToJson(
      this,
    );
  }
}

abstract class _DeteleCartProducts implements DeteleCartProducts {
  factory _DeteleCartProducts({required final List<int> ids}) =
      _$DeteleCartProductsImpl;

  factory _DeteleCartProducts.fromJson(Map<String, dynamic> json) =
      _$DeteleCartProductsImpl.fromJson;

  @override
  List<int> get ids;
  @override
  @JsonKey(ignore: true)
  _$$DeteleCartProductsImplCopyWith<_$DeteleCartProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
