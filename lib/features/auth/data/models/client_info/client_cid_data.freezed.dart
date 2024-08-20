// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_cid_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientCidData _$ClientCidDataFromJson(Map<String, dynamic> json) {
  return _ClientCidData.fromJson(json);
}

/// @nodoc
mixin _$ClientCidData {
  int get id => throw _privateConstructorUsedError;
  String get cid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientCidDataCopyWith<ClientCidData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientCidDataCopyWith<$Res> {
  factory $ClientCidDataCopyWith(
          ClientCidData value, $Res Function(ClientCidData) then) =
      _$ClientCidDataCopyWithImpl<$Res, ClientCidData>;
  @useResult
  $Res call({int id, String cid});
}

/// @nodoc
class _$ClientCidDataCopyWithImpl<$Res, $Val extends ClientCidData>
    implements $ClientCidDataCopyWith<$Res> {
  _$ClientCidDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cid = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientCidDataImplCopyWith<$Res>
    implements $ClientCidDataCopyWith<$Res> {
  factory _$$ClientCidDataImplCopyWith(
          _$ClientCidDataImpl value, $Res Function(_$ClientCidDataImpl) then) =
      __$$ClientCidDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String cid});
}

/// @nodoc
class __$$ClientCidDataImplCopyWithImpl<$Res>
    extends _$ClientCidDataCopyWithImpl<$Res, _$ClientCidDataImpl>
    implements _$$ClientCidDataImplCopyWith<$Res> {
  __$$ClientCidDataImplCopyWithImpl(
      _$ClientCidDataImpl _value, $Res Function(_$ClientCidDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cid = null,
  }) {
    return _then(_$ClientCidDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cid: null == cid
          ? _value.cid
          : cid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientCidDataImpl implements _ClientCidData {
  _$ClientCidDataImpl({required this.id, required this.cid});

  factory _$ClientCidDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientCidDataImplFromJson(json);

  @override
  final int id;
  @override
  final String cid;

  @override
  String toString() {
    return 'ClientCidData(id: $id, cid: $cid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientCidDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cid, cid) || other.cid == cid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientCidDataImplCopyWith<_$ClientCidDataImpl> get copyWith =>
      __$$ClientCidDataImplCopyWithImpl<_$ClientCidDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientCidDataImplToJson(
      this,
    );
  }
}

abstract class _ClientCidData implements ClientCidData {
  factory _ClientCidData({required final int id, required final String cid}) =
      _$ClientCidDataImpl;

  factory _ClientCidData.fromJson(Map<String, dynamic> json) =
      _$ClientCidDataImpl.fromJson;

  @override
  int get id;
  @override
  String get cid;
  @override
  @JsonKey(ignore: true)
  _$$ClientCidDataImplCopyWith<_$ClientCidDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
