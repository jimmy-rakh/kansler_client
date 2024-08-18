// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientExistsResponse _$ClientExistsResponseFromJson(Map<String, dynamic> json) {
  return _ClientExistsResponse.fromJson(json);
}

/// @nodoc
mixin _$ClientExistsResponse {
  String? get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientExistsResponseCopyWith<ClientExistsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientExistsResponseCopyWith<$Res> {
  factory $ClientExistsResponseCopyWith(ClientExistsResponse value,
          $Res Function(ClientExistsResponse) then) =
      _$ClientExistsResponseCopyWithImpl<$Res, ClientExistsResponse>;
  @useResult
  $Res call({String? requestId});
}

/// @nodoc
class _$ClientExistsResponseCopyWithImpl<$Res,
        $Val extends ClientExistsResponse>
    implements $ClientExistsResponseCopyWith<$Res> {
  _$ClientExistsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientExistsResponseImplCopyWith<$Res>
    implements $ClientExistsResponseCopyWith<$Res> {
  factory _$$ClientExistsResponseImplCopyWith(_$ClientExistsResponseImpl value,
          $Res Function(_$ClientExistsResponseImpl) then) =
      __$$ClientExistsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? requestId});
}

/// @nodoc
class __$$ClientExistsResponseImplCopyWithImpl<$Res>
    extends _$ClientExistsResponseCopyWithImpl<$Res, _$ClientExistsResponseImpl>
    implements _$$ClientExistsResponseImplCopyWith<$Res> {
  __$$ClientExistsResponseImplCopyWithImpl(_$ClientExistsResponseImpl _value,
      $Res Function(_$ClientExistsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = freezed,
  }) {
    return _then(_$ClientExistsResponseImpl(
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientExistsResponseImpl implements _ClientExistsResponse {
  _$ClientExistsResponseImpl({this.requestId});

  factory _$ClientExistsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientExistsResponseImplFromJson(json);

  @override
  final String? requestId;

  @override
  String toString() {
    return 'ClientExistsResponse(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientExistsResponseImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientExistsResponseImplCopyWith<_$ClientExistsResponseImpl>
      get copyWith =>
          __$$ClientExistsResponseImplCopyWithImpl<_$ClientExistsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientExistsResponseImplToJson(
      this,
    );
  }
}

abstract class _ClientExistsResponse implements ClientExistsResponse {
  factory _ClientExistsResponse({final String? requestId}) =
      _$ClientExistsResponseImpl;

  factory _ClientExistsResponse.fromJson(Map<String, dynamic> json) =
      _$ClientExistsResponseImpl.fromJson;

  @override
  String? get requestId;
  @override
  @JsonKey(ignore: true)
  _$$ClientExistsResponseImplCopyWith<_$ClientExistsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
