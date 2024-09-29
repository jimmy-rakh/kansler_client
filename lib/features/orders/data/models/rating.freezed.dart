// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) {
  return _RatingDto.fromJson(json);
}

/// @nodoc
mixin _$RatingDto {
  num? get rating => throw _privateConstructorUsedError;

  /// Serializes this RatingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RatingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingDtoCopyWith<RatingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDtoCopyWith<$Res> {
  factory $RatingDtoCopyWith(RatingDto value, $Res Function(RatingDto) then) =
      _$RatingDtoCopyWithImpl<$Res, RatingDto>;
  @useResult
  $Res call({num? rating});
}

/// @nodoc
class _$RatingDtoCopyWithImpl<$Res, $Val extends RatingDto>
    implements $RatingDtoCopyWith<$Res> {
  _$RatingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RatingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingDtoImplCopyWith<$Res>
    implements $RatingDtoCopyWith<$Res> {
  factory _$$RatingDtoImplCopyWith(
          _$RatingDtoImpl value, $Res Function(_$RatingDtoImpl) then) =
      __$$RatingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? rating});
}

/// @nodoc
class __$$RatingDtoImplCopyWithImpl<$Res>
    extends _$RatingDtoCopyWithImpl<$Res, _$RatingDtoImpl>
    implements _$$RatingDtoImplCopyWith<$Res> {
  __$$RatingDtoImplCopyWithImpl(
      _$RatingDtoImpl _value, $Res Function(_$RatingDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RatingDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_$RatingDtoImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingDtoImpl implements _RatingDto {
  _$RatingDtoImpl({this.rating});

  factory _$RatingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingDtoImplFromJson(json);

  @override
  final num? rating;

  @override
  String toString() {
    return 'RatingDto(rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingDtoImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating);

  /// Create a copy of RatingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingDtoImplCopyWith<_$RatingDtoImpl> get copyWith =>
      __$$RatingDtoImplCopyWithImpl<_$RatingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingDtoImplToJson(
      this,
    );
  }
}

abstract class _RatingDto implements RatingDto {
  factory _RatingDto({final num? rating}) = _$RatingDtoImpl;

  factory _RatingDto.fromJson(Map<String, dynamic> json) =
      _$RatingDtoImpl.fromJson;

  @override
  num? get rating;

  /// Create a copy of RatingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingDtoImplCopyWith<_$RatingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
