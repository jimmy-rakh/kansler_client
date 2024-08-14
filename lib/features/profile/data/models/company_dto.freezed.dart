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
  List<MainContactDto> get mainContacts => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  ManagerDto? get manager => throw _privateConstructorUsedError;
  bool? get children => throw _privateConstructorUsedError;

  /// Serializes this CompanyDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      List<MainContactDto> mainContacts,
      String? region,
      ManagerDto? manager,
      bool? children});

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

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? inn = freezed,
    Object? phoneNumbers = freezed,
    Object? companyType = freezed,
    Object? mainContacts = null,
    Object? region = freezed,
    Object? manager = freezed,
    Object? children = freezed,
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
      mainContacts: null == mainContacts
          ? _value.mainContacts
          : mainContacts // ignore: cast_nullable_to_non_nullable
              as List<MainContactDto>,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
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
      List<MainContactDto> mainContacts,
      String? region,
      ManagerDto? manager,
      bool? children});

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

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? inn = freezed,
    Object? phoneNumbers = freezed,
    Object? companyType = freezed,
    Object? mainContacts = null,
    Object? region = freezed,
    Object? manager = freezed,
    Object? children = freezed,
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
      mainContacts: null == mainContacts
          ? _value._mainContacts
          : mainContacts // ignore: cast_nullable_to_non_nullable
              as List<MainContactDto>,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerDto?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      required final List<MainContactDto> mainContacts,
      this.region,
      this.manager,
      this.children})
      : _phoneNumbers = phoneNumbers,
        _mainContacts = mainContacts,
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
  final List<MainContactDto> _mainContacts;
  @override
  List<MainContactDto> get mainContacts {
    if (_mainContacts is EqualUnmodifiableListView) return _mainContacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainContacts);
  }

  @override
  final String? region;
  @override
  final ManagerDto? manager;
  @override
  final bool? children;

  @override
  String toString() {
    return 'CompanyDto(id: $id, name: $name, fullName: $fullName, inn: $inn, phoneNumbers: $phoneNumbers, companyType: $companyType, mainContacts: $mainContacts, region: $region, manager: $manager, children: $children)';
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
            const DeepCollectionEquality()
                .equals(other._mainContacts, _mainContacts) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      inn,
      const DeepCollectionEquality().hash(_phoneNumbers),
      companyType,
      const DeepCollectionEquality().hash(_mainContacts),
      region,
      manager,
      children);

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      required final List<MainContactDto> mainContacts,
      final String? region,
      final ManagerDto? manager,
      final bool? children}) = _$CompanyDtoImpl;
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
  List<MainContactDto> get mainContacts;
  @override
  String? get region;
  @override
  ManagerDto? get manager;
  @override
  bool? get children;

  /// Create a copy of CompanyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanyDtoImplCopyWith<_$CompanyDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainContactDto _$MainContactDtoFromJson(Map<String, dynamic> json) {
  return _MainContactDto.fromJson(json);
}

/// @nodoc
mixin _$MainContactDto {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this MainContactDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainContactDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainContactDtoCopyWith<MainContactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainContactDtoCopyWith<$Res> {
  factory $MainContactDtoCopyWith(
          MainContactDto value, $Res Function(MainContactDto) then) =
      _$MainContactDtoCopyWithImpl<$Res, MainContactDto>;
  @useResult
  $Res call({String? name, String? type, String? phone});
}

/// @nodoc
class _$MainContactDtoCopyWithImpl<$Res, $Val extends MainContactDto>
    implements $MainContactDtoCopyWith<$Res> {
  _$MainContactDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainContactDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainContactDtoImplCopyWith<$Res>
    implements $MainContactDtoCopyWith<$Res> {
  factory _$$MainContactDtoImplCopyWith(_$MainContactDtoImpl value,
          $Res Function(_$MainContactDtoImpl) then) =
      __$$MainContactDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? type, String? phone});
}

/// @nodoc
class __$$MainContactDtoImplCopyWithImpl<$Res>
    extends _$MainContactDtoCopyWithImpl<$Res, _$MainContactDtoImpl>
    implements _$$MainContactDtoImplCopyWith<$Res> {
  __$$MainContactDtoImplCopyWithImpl(
      _$MainContactDtoImpl _value, $Res Function(_$MainContactDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainContactDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$MainContactDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainContactDtoImpl extends _MainContactDto {
  const _$MainContactDtoImpl({this.name, this.type, this.phone}) : super._();

  factory _$MainContactDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainContactDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? phone;

  @override
  String toString() {
    return 'MainContactDto(name: $name, type: $type, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainContactDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, phone);

  /// Create a copy of MainContactDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainContactDtoImplCopyWith<_$MainContactDtoImpl> get copyWith =>
      __$$MainContactDtoImplCopyWithImpl<_$MainContactDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainContactDtoImplToJson(
      this,
    );
  }
}

abstract class _MainContactDto extends MainContactDto {
  const factory _MainContactDto(
      {final String? name,
      final String? type,
      final String? phone}) = _$MainContactDtoImpl;
  const _MainContactDto._() : super._();

  factory _MainContactDto.fromJson(Map<String, dynamic> json) =
      _$MainContactDtoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get phone;

  /// Create a copy of MainContactDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainContactDtoImplCopyWith<_$MainContactDtoImpl> get copyWith =>
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

  /// Serializes this ManagerDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ManagerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ManagerDtoCopyWith<ManagerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerDtoCopyWith<$Res> {
  factory $ManagerDtoCopyWith(
          ManagerDto value, $Res Function(ManagerDto) then) =
      _$ManagerDtoCopyWithImpl<$Res, ManagerDto>;
  @useResult
  $Res call({String? name, String? fullName, String? phone});
}

/// @nodoc
class _$ManagerDtoCopyWithImpl<$Res, $Val extends ManagerDto>
    implements $ManagerDtoCopyWith<$Res> {
  _$ManagerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManagerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
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
  $Res call({String? name, String? fullName, String? phone});
}

/// @nodoc
class __$$ManagerDtoImplCopyWithImpl<$Res>
    extends _$ManagerDtoCopyWithImpl<$Res, _$ManagerDtoImpl>
    implements _$$ManagerDtoImplCopyWith<$Res> {
  __$$ManagerDtoImplCopyWithImpl(
      _$ManagerDtoImpl _value, $Res Function(_$ManagerDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ManagerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManagerDtoImpl extends _ManagerDto {
  const _$ManagerDtoImpl({this.name, this.fullName, this.phone}) : super._();

  factory _$ManagerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ManagerDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? phone;

  @override
  String toString() {
    return 'ManagerDto(name: $name, fullName: $fullName, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, fullName, phone);

  /// Create a copy of ManagerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final String? phone}) = _$ManagerDtoImpl;
  const _ManagerDto._() : super._();

  factory _ManagerDto.fromJson(Map<String, dynamic> json) =
      _$ManagerDtoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get phone;

  /// Create a copy of ManagerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ManagerDtoImplCopyWith<_$ManagerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
