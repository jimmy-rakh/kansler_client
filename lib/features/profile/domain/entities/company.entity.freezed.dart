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
  ManagerEntity? get manager => throw _privateConstructorUsedError;

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
      ManagerEntity? manager});

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
              as ManagerEntity?,
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
      ManagerEntity? manager});

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
    Object? manager = freezed,
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
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as ManagerEntity?,
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
      this.manager})
      : _phoneNumbers = phoneNumbers;

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
  final ManagerEntity? manager;

  @override
  String toString() {
    return 'CompanyEntity(id: $id, name: $name, fullName: $fullName, inn: $inn, phoneNumbers: $phoneNumbers, companyType: $companyType, manager: $manager)';
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
            (identical(other.manager, manager) || other.manager == manager));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, fullName, inn,
      const DeepCollectionEquality().hash(_phoneNumbers), companyType, manager);

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
      final ManagerEntity? manager}) = _$CompanyEntityImpl;

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
  ManagerEntity? get manager;
  @override
  @JsonKey(ignore: true)
  _$$CompanyEntityImplCopyWith<_$CompanyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManagerEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

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
  $Res call({String? name, String? fullName, String? phone, String? image});
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
abstract class _$$ManagerEntityImplCopyWith<$Res>
    implements $ManagerEntityCopyWith<$Res> {
  factory _$$ManagerEntityImplCopyWith(
          _$ManagerEntityImpl value, $Res Function(_$ManagerEntityImpl) then) =
      __$$ManagerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? fullName, String? phone, String? image});
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
    Object? image = freezed,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ManagerEntityImpl implements _ManagerEntity {
  const _$ManagerEntityImpl({this.name, this.fullName, this.phone, this.image});

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
    return 'ManagerEntity(name: $name, fullName: $fullName, phone: $phone, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManagerEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, fullName, phone, image);

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
      final String? phone,
      final String? image}) = _$ManagerEntityImpl;

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
  _$$ManagerEntityImplCopyWith<_$ManagerEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
