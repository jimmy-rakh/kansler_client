// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompanyEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get inn => throw _privateConstructorUsedError;
  List<String?>? get phoneNumbers => throw _privateConstructorUsedError;
  String? get companyType => throw _privateConstructorUsedError;
  List<MainContactEntity> get mainContact => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  ManagerEntity? get manager => throw _privateConstructorUsedError;
  bool? get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyEntityCopyWith<CompanyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyEntityCopyWith<$Res> {
  factory $CompanyEntityCopyWith(
          CompanyEntity value, $Res Function(CompanyEntity) then) =
      _$CompanyEntityCopyWithImpl<$Res, CompanyEntity>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? fullName,
      String? inn,
      List<String?>? phoneNumbers,
      String? companyType,
      List<MainContactEntity> mainContact,
      String? region,
      ManagerEntity? manager,
      bool? children});

  $ManagerEntityCopyWith<$Res>? get manager;
}

/// @nodoc
class _$CompanyEntityCopyWithImpl<$Res, $Val extends CompanyEntity>
    implements $CompanyEntityCopyWith<$Res> {
  _$CompanyEntityCopyWithImpl(this._value, this._then);

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
    Object? mainContact = null,
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
      mainContact: null == mainContact
          ? _value.mainContact
          : mainContact // ignore: cast_nullable_to_non_nullable
              as List<MainContactEntity>,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerEntity?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ManagerEntityCopyWith<$Res>? get manager {
    if (_value.manager == null) {
      return null;
    }

    return $ManagerEntityCopyWith<$Res>(_value.manager!, (value) {
      return _then(_value.copyWith(manager: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanyEntityImplCopyWith<$Res>
    implements $CompanyEntityCopyWith<$Res> {
  factory _$$CompanyEntityImplCopyWith(
          _$CompanyEntityImpl value, $Res Function(_$CompanyEntityImpl) then) =
      __$$CompanyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? fullName,
      String? inn,
      List<String?>? phoneNumbers,
      String? companyType,
      List<MainContactEntity> mainContact,
      String? region,
      ManagerEntity? manager,
      bool? children});

  @override
  $ManagerEntityCopyWith<$Res>? get manager;
}

/// @nodoc
class __$$CompanyEntityImplCopyWithImpl<$Res>
    extends _$CompanyEntityCopyWithImpl<$Res, _$CompanyEntityImpl>
    implements _$$CompanyEntityImplCopyWith<$Res> {
  __$$CompanyEntityImplCopyWithImpl(
      _$CompanyEntityImpl _value, $Res Function(_$CompanyEntityImpl) _then)
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
    Object? mainContact = null,
    Object? region = freezed,
    Object? manager = freezed,
    Object? children = freezed,
  }) {
    return _then(_$CompanyEntityImpl(
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
      mainContact: null == mainContact
          ? _value._mainContact
          : mainContact // ignore: cast_nullable_to_non_nullable
              as List<MainContactEntity>,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerEntity?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CompanyEntityImpl implements _CompanyEntity {
  const _$CompanyEntityImpl(
      {required this.id,
      this.name,
      this.fullName,
      this.inn,
      final List<String?>? phoneNumbers,
      this.companyType,
      required final List<MainContactEntity> mainContact,
      this.region,
      this.manager,
      this.children})
      : _phoneNumbers = phoneNumbers,
        _mainContact = mainContact;

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
  final List<MainContactEntity> _mainContact;
  @override
  List<MainContactEntity> get mainContact {
    if (_mainContact is EqualUnmodifiableListView) return _mainContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainContact);
  }

  @override
  final String? region;
  @override
  final ManagerEntity? manager;
  @override
  final bool? children;

  @override
  String toString() {
    return 'CompanyEntity(id: $id, name: $name, fullName: $fullName, inn: $inn, phoneNumbers: $phoneNumbers, companyType: $companyType, mainContact: $mainContact, region: $region, manager: $manager, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanyEntityImpl &&
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
                .equals(other._mainContact, _mainContact) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      inn,
      const DeepCollectionEquality().hash(_phoneNumbers),
      companyType,
      const DeepCollectionEquality().hash(_mainContact),
      region,
      manager,
      children);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanyEntityImplCopyWith<_$CompanyEntityImpl> get copyWith =>
      __$$CompanyEntityImplCopyWithImpl<_$CompanyEntityImpl>(this, _$identity);
}

abstract class _CompanyEntity implements CompanyEntity {
  const factory _CompanyEntity(
      {required final int id,
      final String? name,
      final String? fullName,
      final String? inn,
      final List<String?>? phoneNumbers,
      final String? companyType,
      required final List<MainContactEntity> mainContact,
      final String? region,
      final ManagerEntity? manager,
      final bool? children}) = _$CompanyEntityImpl;

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
  List<MainContactEntity> get mainContact;
  @override
  String? get region;
  @override
  ManagerEntity? get manager;
  @override
  bool? get children;
  @override
  @JsonKey(ignore: true)
  _$$CompanyEntityImplCopyWith<_$CompanyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainContactEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainContactEntityCopyWith<MainContactEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainContactEntityCopyWith<$Res> {
  factory $MainContactEntityCopyWith(
          MainContactEntity value, $Res Function(MainContactEntity) then) =
      _$MainContactEntityCopyWithImpl<$Res, MainContactEntity>;
  @useResult
  $Res call({String? name, String? type, String? phone});
}

/// @nodoc
class _$MainContactEntityCopyWithImpl<$Res, $Val extends MainContactEntity>
    implements $MainContactEntityCopyWith<$Res> {
  _$MainContactEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$MainContactEntityImplCopyWith<$Res>
    implements $MainContactEntityCopyWith<$Res> {
  factory _$$MainContactEntityImplCopyWith(_$MainContactEntityImpl value,
          $Res Function(_$MainContactEntityImpl) then) =
      __$$MainContactEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? type, String? phone});
}

/// @nodoc
class __$$MainContactEntityImplCopyWithImpl<$Res>
    extends _$MainContactEntityCopyWithImpl<$Res, _$MainContactEntityImpl>
    implements _$$MainContactEntityImplCopyWith<$Res> {
  __$$MainContactEntityImplCopyWithImpl(_$MainContactEntityImpl _value,
      $Res Function(_$MainContactEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$MainContactEntityImpl(
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

class _$MainContactEntityImpl implements _MainContactEntity {
  const _$MainContactEntityImpl({this.name, this.type, this.phone});

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? phone;

  @override
  String toString() {
    return 'MainContactEntity(name: $name, type: $type, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainContactEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainContactEntityImplCopyWith<_$MainContactEntityImpl> get copyWith =>
      __$$MainContactEntityImplCopyWithImpl<_$MainContactEntityImpl>(
          this, _$identity);
}

abstract class _MainContactEntity implements MainContactEntity {
  const factory _MainContactEntity(
      {final String? name,
      final String? type,
      final String? phone}) = _$MainContactEntityImpl;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$MainContactEntityImplCopyWith<_$MainContactEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManagerEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManagerEntityCopyWith<ManagerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagerEntityCopyWith<$Res> {
  factory $ManagerEntityCopyWith(
          ManagerEntity value, $Res Function(ManagerEntity) then) =
      _$ManagerEntityCopyWithImpl<$Res, ManagerEntity>;
  @useResult
  $Res call({String? name, String? fullName, String? phone});
}

/// @nodoc
class _$ManagerEntityCopyWithImpl<$Res, $Val extends ManagerEntity>
    implements $ManagerEntityCopyWith<$Res> {
  _$ManagerEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$ManagerEntityImplCopyWith<$Res>
    implements $ManagerEntityCopyWith<$Res> {
  factory _$$ManagerEntityImplCopyWith(
          _$ManagerEntityImpl value, $Res Function(_$ManagerEntityImpl) then) =
      __$$ManagerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? fullName, String? phone});
}

/// @nodoc
class __$$ManagerEntityImplCopyWithImpl<$Res>
    extends _$ManagerEntityCopyWithImpl<$Res, _$ManagerEntityImpl>
    implements _$$ManagerEntityImplCopyWith<$Res> {
  __$$ManagerEntityImplCopyWithImpl(
      _$ManagerEntityImpl _value, $Res Function(_$ManagerEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$ManagerEntityImpl(
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

class _$ManagerEntityImpl implements _ManagerEntity {
  const _$ManagerEntityImpl({this.name, this.fullName, this.phone});

  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? phone;

  @override
  String toString() {
    return 'ManagerEntity(name: $name, fullName: $fullName, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, fullName, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManagerEntityImplCopyWith<_$ManagerEntityImpl> get copyWith =>
      __$$ManagerEntityImplCopyWithImpl<_$ManagerEntityImpl>(this, _$identity);
}

abstract class _ManagerEntity implements ManagerEntity {
  const factory _ManagerEntity(
      {final String? name,
      final String? fullName,
      final String? phone}) = _$ManagerEntityImpl;

  @override
  String? get name;
  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$ManagerEntityImplCopyWith<_$ManagerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
