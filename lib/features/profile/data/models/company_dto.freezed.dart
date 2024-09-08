// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CompanyDto _$CompanyDtoFromJson(Map<String, dynamic> json) {
  return _CompanyDto.fromJson(json);
}

/// @nodoc
mixin _$CompanyDto {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get inn => throw _privateConstructorUsedError;
  List<String?>? get phoneNumbers => throw _privateConstructorUsedError;
  String? get companyType => throw _privateConstructorUsedError;
  ManagerDto? get manager => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDtoCopyWith<CompanyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDtoCopyWith<$Res> {
  factory $CompanyDtoCopyWith(
          CompanyDto value, $Res Function(CompanyDto) then) =
      _$CompanyDtoCopyWithImpl<$Res, CompanyDto>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? fullName,
      String? inn,
      List<String?>? phoneNumbers,
      String? companyType,
      ManagerDto? manager});

  $ManagerDtoCopyWith<$Res>? get manager;
}

/// @nodoc
class _$CompanyDtoCopyWithImpl<$Res, $Val extends CompanyDto>
    implements $CompanyDtoCopyWith<$Res> {
  _$CompanyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? inn = freezed,
    Object? phoneNumbers = freezed,
    Object? companyType = freezed,
    Object? manager = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      companyType: freezed == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ManagerDtoCopyWith<$Res>? get manager {
    if (_value.manager == null) {
      return null;
    }

    return $ManagerDtoCopyWith<$Res>(_value.manager!, (value) {
      return _then(_value.copyWith(manager: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyDtoImplCopyWith<$Res>
    implements $CompanyDtoCopyWith<$Res> {
  factory _$$CompanyDtoImplCopyWith(
          _$CompanyDtoImpl value, $Res Function(_$CompanyDtoImpl) then) =
      __$$CompanyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? fullName,
      String? inn,
      List<String?>? phoneNumbers,
      String? companyType,
      ManagerDto? manager});

  @override
  $ManagerDtoCopyWith<$Res>? get manager;
}

/// @nodoc
class __$$CompanyDtoImplCopyWithImpl<$Res>
    extends _$CompanyDtoCopyWithImpl<$Res, _$CompanyDtoImpl>
    implements _$$CompanyDtoImplCopyWith<$Res> {
  __$$CompanyDtoImplCopyWithImpl(
      _$CompanyDtoImpl _value, $Res Function(_$CompanyDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? inn = freezed,
    Object? phoneNumbers = freezed,
    Object? companyType = freezed,
    Object? manager = freezed,
  }) {
    return _then(_$CompanyDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      companyType: freezed == companyType
          ? _value.companyType
          : companyType // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompanyDtoImpl extends _CompanyDto {
  const _$CompanyDtoImpl(
      {required this.id,
      this.name,
      this.fullName,
      this.inn,
      final List<String?>? phoneNumbers,
      this.companyType,
      this.manager})
      : _phoneNumbers = phoneNumbers,
        super._();

  factory _$CompanyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompanyDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? inn;
  final List<String?>? _phoneNumbers;
  @override
  List<String?>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? companyType;
  @override
  final ManagerDto? manager;

  @override
  String toString() {
    return 'CompanyDto(id: $id, name: $name, fullName: $fullName, inn: $inn, phoneNumbers: $phoneNumbers, companyType: $companyType, manager: $manager)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.inn, inn) || other.inn == inn) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
            (identical(other.companyType, companyType) ||
                other.companyType == companyType) &&
            (identical(other.manager, manager) || other.manager == manager));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, inn,
      const DeepCollectionEquality().hash(_phoneNumbers), companyType, manager);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      __$$CompanyDtoImplCopyWithImpl<_$CompanyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompanyDtoImplToJson(
      this,
    );
  }
}

abstract class _CompanyDto extends CompanyDto {
  const factory _CompanyDto(
      {required final int id,
      final String? name,
      final String? fullName,
      final String? inn,
      final List<String?>? phoneNumbers,
      final String? companyType,
      final ManagerDto? manager}) = _$CompanyDtoImpl;
  const _CompanyDto._() : super._();

  factory _CompanyDto.fromJson(Map<String, dynamic> json) =
      _$CompanyDtoImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get inn;
  @override
  List<String?>? get phoneNumbers;
  @override
  String? get companyType;
  @override
  ManagerDto? get manager;
  @override
  @JsonKey(ignore: true)
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ManagerDto _$ManagerDtoFromJson(Map<String, dynamic> json) {
  return _ManagerDto.fromJson(json);
}

/// @nodoc
mixin _$ManagerDto {
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManagerDtoCopyWith<ManagerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerDtoCopyWith<$Res> {
  factory $ManagerDtoCopyWith(
          ManagerDto value, $Res Function(ManagerDto) then) =
      _$ManagerDtoCopyWithImpl<$Res, ManagerDto>;
  @useResult
  $Res call({String? name, String? fullName, String? phone, String? image});
}

/// @nodoc
class _$ManagerDtoCopyWithImpl<$Res, $Val extends ManagerDto>
    implements $ManagerDtoCopyWith<$Res> {
  _$ManagerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ManagerDtoImplCopyWith<$Res>
    implements $ManagerDtoCopyWith<$Res> {
  factory _$$ManagerDtoImplCopyWith(
          _$ManagerDtoImpl value, $Res Function(_$ManagerDtoImpl) then) =
      __$$ManagerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? fullName, String? phone, String? image});
}

/// @nodoc
class __$$ManagerDtoImplCopyWithImpl<$Res>
    extends _$ManagerDtoCopyWithImpl<$Res, _$ManagerDtoImpl>
    implements _$$ManagerDtoImplCopyWith<$Res> {
  __$$ManagerDtoImplCopyWithImpl(
      _$ManagerDtoImpl _value, $Res Function(_$ManagerDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? image = freezed,
  }) {
    return _then(_$ManagerDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerDtoImpl extends _ManagerDto {
  const _$ManagerDtoImpl({this.name, this.fullName, this.phone, this.image})
      : super._();

  factory _$ManagerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? image;

  @override
  String toString() {
    return 'ManagerDto(name: $name, fullName: $fullName, phone: $phone, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fullName, phone, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerDtoImplCopyWith<_$ManagerDtoImpl> get copyWith =>
      __$$ManagerDtoImplCopyWithImpl<_$ManagerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManagerDtoImplToJson(
      this,
    );
  }
}

abstract class _ManagerDto extends ManagerDto {
  const factory _ManagerDto(
      {final String? name,
      final String? fullName,
      final String? phone,
      final String? image}) = _$ManagerDtoImpl;
  const _ManagerDto._() : super._();

  factory _ManagerDto.fromJson(Map<String, dynamic> json) =
      _$ManagerDtoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$ManagerDtoImplCopyWith<_$ManagerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
