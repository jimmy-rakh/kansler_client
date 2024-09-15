// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_data.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDataEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Create a copy of ProductDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataEntityCopyWith<ProductDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataEntityCopyWith<$Res> {
  factory $ProductDataEntityCopyWith(
          ProductDataEntity value, $Res Function(ProductDataEntity) then) =
      _$ProductDataEntityCopyWithImpl<$Res, ProductDataEntity>;
  @useResult
  $Res call({int id, String name, String? imageUrl});
}

/// @nodoc
class _$ProductDataEntityCopyWithImpl<$Res, $Val extends ProductDataEntity>
    implements $ProductDataEntityCopyWith<$Res> {
  _$ProductDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDataEntityImplCopyWith<$Res>
    implements $ProductDataEntityCopyWith<$Res> {
  factory _$$ProductDataEntityImplCopyWith(_$ProductDataEntityImpl value,
          $Res Function(_$ProductDataEntityImpl) then) =
      __$$ProductDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? imageUrl});
}

/// @nodoc
class __$$ProductDataEntityImplCopyWithImpl<$Res>
    extends _$ProductDataEntityCopyWithImpl<$Res, _$ProductDataEntityImpl>
    implements _$$ProductDataEntityImplCopyWith<$Res> {
  __$$ProductDataEntityImplCopyWithImpl(_$ProductDataEntityImpl _value,
      $Res Function(_$ProductDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ProductDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductDataEntityImpl implements _ProductDataEntity {
  _$ProductDataEntityImpl(
      {required this.id, required this.name, this.imageUrl});

  @override
  final int id;
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ProductDataEntity(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  /// Create a copy of ProductDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataEntityImplCopyWith<_$ProductDataEntityImpl> get copyWith =>
      __$$ProductDataEntityImplCopyWithImpl<_$ProductDataEntityImpl>(
          this, _$identity);
}

abstract class _ProductDataEntity implements ProductDataEntity {
  factory _ProductDataEntity(
      {required final int id,
      required final String name,
      final String? imageUrl}) = _$ProductDataEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get imageUrl;

  /// Create a copy of ProductDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataEntityImplCopyWith<_$ProductDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
