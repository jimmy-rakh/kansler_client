// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDataDto _$ProductDataDtoFromJson(Map<String, dynamic> json) {
  return _ProductDataDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDataDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataDtoCopyWith<ProductDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataDtoCopyWith<$Res> {
  factory $ProductDataDtoCopyWith(
          ProductDataDto value, $Res Function(ProductDataDto) then) =
      _$ProductDataDtoCopyWithImpl<$Res, ProductDataDto>;
  @useResult
  $Res call({int id, String name, String? imageUrl});
}

/// @nodoc
class _$ProductDataDtoCopyWithImpl<$Res, $Val extends ProductDataDto>
    implements $ProductDataDtoCopyWith<$Res> {
  _$ProductDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$ProductDataDtoImplCopyWith<$Res>
    implements $ProductDataDtoCopyWith<$Res> {
  factory _$$ProductDataDtoImplCopyWith(_$ProductDataDtoImpl value,
          $Res Function(_$ProductDataDtoImpl) then) =
      __$$ProductDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? imageUrl});
}

/// @nodoc
class __$$ProductDataDtoImplCopyWithImpl<$Res>
    extends _$ProductDataDtoCopyWithImpl<$Res, _$ProductDataDtoImpl>
    implements _$$ProductDataDtoImplCopyWith<$Res> {
  __$$ProductDataDtoImplCopyWithImpl(
      _$ProductDataDtoImpl _value, $Res Function(_$ProductDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$ProductDataDtoImpl(
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
@JsonSerializable()
class _$ProductDataDtoImpl extends _ProductDataDto {
  _$ProductDataDtoImpl({required this.id, required this.name, this.imageUrl})
      : super._();

  factory _$ProductDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ProductDataDto(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

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

abstract class _ProductDataDto extends ProductDataDto {
  factory _ProductDataDto(
      {required final int id,
      required final String name,
      final String? imageUrl}) = _$ProductDataDtoImpl;
  _ProductDataDto._() : super._();

  factory _ProductDataDto.fromJson(Map<String, dynamic> json) =
      _$ProductDataDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ProductDataDtoImplCopyWith<_$ProductDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
