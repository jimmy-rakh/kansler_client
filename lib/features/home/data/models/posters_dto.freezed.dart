// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posters_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostersDto _$PostersDtoFromJson(Map<String, dynamic> json) {
  return _PostersDto.fromJson(json);
}

/// @nodoc
mixin _$PostersDto {
  int get id => throw _privateConstructorUsedError;
  String? get posterType => throw _privateConstructorUsedError;
  String? get imgMobile => throw _privateConstructorUsedError;
  String? get imgWeb => throw _privateConstructorUsedError;

  /// Serializes this PostersDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostersDtoCopyWith<PostersDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostersDtoCopyWith<$Res> {
  factory $PostersDtoCopyWith(
          PostersDto value, $Res Function(PostersDto) then) =
      _$PostersDtoCopyWithImpl<$Res, PostersDto>;
  @useResult
  $Res call({int id, String? posterType, String? imgMobile, String? imgWeb});
}

/// @nodoc
class _$PostersDtoCopyWithImpl<$Res, $Val extends PostersDto>
    implements $PostersDtoCopyWith<$Res> {
  _$PostersDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? posterType = freezed,
    Object? imgMobile = freezed,
    Object? imgWeb = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterType: freezed == posterType
          ? _value.posterType
          : posterType // ignore: cast_nullable_to_non_nullable
              as String?,
      imgMobile: freezed == imgMobile
          ? _value.imgMobile
          : imgMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      imgWeb: freezed == imgWeb
          ? _value.imgWeb
          : imgWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostersDtoImplCopyWith<$Res>
    implements $PostersDtoCopyWith<$Res> {
  factory _$$PostersDtoImplCopyWith(
          _$PostersDtoImpl value, $Res Function(_$PostersDtoImpl) then) =
      __$$PostersDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? posterType, String? imgMobile, String? imgWeb});
}

/// @nodoc
class __$$PostersDtoImplCopyWithImpl<$Res>
    extends _$PostersDtoCopyWithImpl<$Res, _$PostersDtoImpl>
    implements _$$PostersDtoImplCopyWith<$Res> {
  __$$PostersDtoImplCopyWithImpl(
      _$PostersDtoImpl _value, $Res Function(_$PostersDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostersDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? posterType = freezed,
    Object? imgMobile = freezed,
    Object? imgWeb = freezed,
  }) {
    return _then(_$PostersDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      posterType: freezed == posterType
          ? _value.posterType
          : posterType // ignore: cast_nullable_to_non_nullable
              as String?,
      imgMobile: freezed == imgMobile
          ? _value.imgMobile
          : imgMobile // ignore: cast_nullable_to_non_nullable
              as String?,
      imgWeb: freezed == imgWeb
          ? _value.imgWeb
          : imgWeb // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostersDtoImpl implements _PostersDto {
  _$PostersDtoImpl(
      {required this.id, this.posterType, this.imgMobile, this.imgWeb});

  factory _$PostersDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostersDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String? posterType;
  @override
  final String? imgMobile;
  @override
  final String? imgWeb;

  @override
  String toString() {
    return 'PostersDto(id: $id, posterType: $posterType, imgMobile: $imgMobile, imgWeb: $imgWeb)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostersDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.posterType, posterType) ||
                other.posterType == posterType) &&
            (identical(other.imgMobile, imgMobile) ||
                other.imgMobile == imgMobile) &&
            (identical(other.imgWeb, imgWeb) || other.imgWeb == imgWeb));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, posterType, imgMobile, imgWeb);

  /// Create a copy of PostersDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostersDtoImplCopyWith<_$PostersDtoImpl> get copyWith =>
      __$$PostersDtoImplCopyWithImpl<_$PostersDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostersDtoImplToJson(
      this,
    );
  }
}

abstract class _PostersDto implements PostersDto {
  factory _PostersDto(
      {required final int id,
      final String? posterType,
      final String? imgMobile,
      final String? imgWeb}) = _$PostersDtoImpl;

  factory _PostersDto.fromJson(Map<String, dynamic> json) =
      _$PostersDtoImpl.fromJson;

  @override
  int get id;
  @override
  String? get posterType;
  @override
  String? get imgMobile;
  @override
  String? get imgWeb;

  /// Create a copy of PostersDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostersDtoImplCopyWith<_$PostersDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
