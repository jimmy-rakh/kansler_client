// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.entitity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEntitity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get hasChildren => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<CategoryEntitity> get children => throw _privateConstructorUsedError;

  /// Create a copy of CategoryEntitity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryEntitityCopyWith<CategoryEntitity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEntitityCopyWith<$Res> {
  factory $CategoryEntitityCopyWith(
          CategoryEntitity value, $Res Function(CategoryEntitity) then) =
      _$CategoryEntitityCopyWithImpl<$Res, CategoryEntitity>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool hasChildren,
      String? imageUrl,
      List<CategoryEntitity> children});
}

/// @nodoc
class _$CategoryEntitityCopyWithImpl<$Res, $Val extends CategoryEntitity>
    implements $CategoryEntitityCopyWith<$Res> {
  _$CategoryEntitityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryEntitity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasChildren = null,
    Object? imageUrl = freezed,
    Object? children = null,
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
      hasChildren: null == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntitity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryEntitityImplCopyWith<$Res>
    implements $CategoryEntitityCopyWith<$Res> {
  factory _$$CategoryEntitityImplCopyWith(_$CategoryEntitityImpl value,
          $Res Function(_$CategoryEntitityImpl) then) =
      __$$CategoryEntitityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool hasChildren,
      String? imageUrl,
      List<CategoryEntitity> children});
}

/// @nodoc
class __$$CategoryEntitityImplCopyWithImpl<$Res>
    extends _$CategoryEntitityCopyWithImpl<$Res, _$CategoryEntitityImpl>
    implements _$$CategoryEntitityImplCopyWith<$Res> {
  __$$CategoryEntitityImplCopyWithImpl(_$CategoryEntitityImpl _value,
      $Res Function(_$CategoryEntitityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryEntitity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? hasChildren = null,
    Object? imageUrl = freezed,
    Object? children = null,
  }) {
    return _then(_$CategoryEntitityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasChildren: null == hasChildren
          ? _value.hasChildren
          : hasChildren // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntitity>,
    ));
  }
}

/// @nodoc

class _$CategoryEntitityImpl implements _CategoryEntitity {
  _$CategoryEntitityImpl(
      {required this.id,
      required this.name,
      required this.hasChildren,
      this.imageUrl,
      final List<CategoryEntitity> children = const []})
      : _children = children;

  @override
  final int id;
  @override
  final String name;
  @override
  final bool hasChildren;
  @override
  final String? imageUrl;
  final List<CategoryEntitity> _children;
  @override
  @JsonKey()
  List<CategoryEntitity> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'CategoryEntitity(id: $id, name: $name, hasChildren: $hasChildren, imageUrl: $imageUrl, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryEntitityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, hasChildren, imageUrl,
      const DeepCollectionEquality().hash(_children));

  /// Create a copy of CategoryEntitity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryEntitityImplCopyWith<_$CategoryEntitityImpl> get copyWith =>
      __$$CategoryEntitityImplCopyWithImpl<_$CategoryEntitityImpl>(
          this, _$identity);
}

abstract class _CategoryEntitity implements CategoryEntitity {
  factory _CategoryEntitity(
      {required final int id,
      required final String name,
      required final bool hasChildren,
      final String? imageUrl,
      final List<CategoryEntitity> children}) = _$CategoryEntitityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get hasChildren;
  @override
  String? get imageUrl;
  @override
  List<CategoryEntitity> get children;

  /// Create a copy of CategoryEntitity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryEntitityImplCopyWith<_$CategoryEntitityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
