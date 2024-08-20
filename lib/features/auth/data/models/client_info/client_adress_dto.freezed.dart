// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_adress_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientAdressDto _$ClientAdressDtoFromJson(Map<String, dynamic> json) {
  return _ClientAdressDto.fromJson(json);
}

/// @nodoc
mixin _$ClientAdressDto {
  int get id => throw _privateConstructorUsedError;
  String get cid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientAdressDtoCopyWith<ClientAdressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientAdressDtoCopyWith<$Res> {
  factory $ClientAdressDtoCopyWith(
          ClientAdressDto value, $Res Function(ClientAdressDto) then) =
      _$ClientAdressDtoCopyWithImpl<$Res, ClientAdressDto>;
  @useResult
  $Res call({int id, String cid, String? name});
}

/// @nodoc
class _$ClientAdressDtoCopyWithImpl<$Res, $Val extends ClientAdressDto>
    implements $ClientAdressDtoCopyWith<$Res> {
  _$ClientAdressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cid = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientAdressDtoImplCopyWith<$Res>
    implements $ClientAdressDtoCopyWith<$Res> {
  factory _$$ClientAdressDtoImplCopyWith(_$ClientAdressDtoImpl value,
          $Res Function(_$ClientAdressDtoImpl) then) =
      __$$ClientAdressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String cid, String? name});
}

/// @nodoc
class __$$ClientAdressDtoImplCopyWithImpl<$Res>
    extends _$ClientAdressDtoCopyWithImpl<$Res, _$ClientAdressDtoImpl>
    implements _$$ClientAdressDtoImplCopyWith<$Res> {
  __$$ClientAdressDtoImplCopyWithImpl(
      _$ClientAdressDtoImpl _value, $Res Function(_$ClientAdressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cid = null,
    Object? name = freezed,
  }) {
    return _then(_$ClientAdressDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientAdressDtoImpl implements _ClientAdressDto {
  _$ClientAdressDtoImpl({required this.id, required this.cid, this.name});

  factory _$ClientAdressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientAdressDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String cid;
  @override
  final String? name;

  @override
  String toString() {
    return 'ClientAdressDto(id: $id, cid: $cid, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientAdressDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cid, cid) || other.cid == cid) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cid, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientAdressDtoImplCopyWith<_$ClientAdressDtoImpl> get copyWith =>
      __$$ClientAdressDtoImplCopyWithImpl<_$ClientAdressDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientAdressDtoImplToJson(
      this,
    );
  }
}

abstract class _ClientAdressDto implements ClientAdressDto {
  factory _ClientAdressDto(
      {required final int id,
      required final String cid,
      final String? name}) = _$ClientAdressDtoImpl;

  factory _ClientAdressDto.fromJson(Map<String, dynamic> json) =
      _$ClientAdressDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get cid;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ClientAdressDtoImplCopyWith<_$ClientAdressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
