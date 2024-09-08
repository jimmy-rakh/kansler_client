// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subcategory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubcategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryStateCopyWith<$Res> {
  factory $SubcategoryStateCopyWith(
          SubcategoryState value, $Res Function(SubcategoryState) then) =
      _$SubcategoryStateCopyWithImpl<$Res, SubcategoryState>;
}

/// @nodoc
class _$SubcategoryStateCopyWithImpl<$Res, $Val extends SubcategoryState>
    implements $SubcategoryStateCopyWith<$Res> {
  _$SubcategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$SubcategoryStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'SubcategoryState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)
        ready,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)?
        ready,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)?
        ready,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SubcategoryState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CategoryEntitity category,
      List<CategoryEntitity> categories,
      List<ProductEntity> products,
      CategoryEntitity? selectedCategory,
      bool isCategoriesLoading,
      bool isProductsLoading,
      bool isList,
      bool isPaginationLoading});

  $CategoryEntitityCopyWith<$Res> get category;
  $CategoryEntitityCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$SubcategoryStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? categories = null,
    Object? products = null,
    Object? selectedCategory = freezed,
    Object? isCategoriesLoading = null,
    Object? isProductsLoading = null,
    Object? isList = null,
    Object? isPaginationLoading = null,
  }) {
    return _then(_$ReadyImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntitity,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntitity>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryEntitity?,
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isList: null == isList
          ? _value.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginationLoading: null == isPaginationLoading
          ? _value.isPaginationLoading
          : isPaginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntitityCopyWith<$Res> get category {
    return $CategoryEntitityCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntitityCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryEntitityCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {required this.category,
      final List<CategoryEntitity> categories = const [],
      final List<ProductEntity> products = const [],
      this.selectedCategory,
      this.isCategoriesLoading = true,
      this.isProductsLoading = true,
      this.isList = true,
      this.isPaginationLoading = false})
      : _categories = categories,
        _products = products;

  @override
  final CategoryEntitity category;
  final List<CategoryEntitity> _categories;
  @override
  @JsonKey()
  List<CategoryEntitity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductEntity> _products;
  @override
  @JsonKey()
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final CategoryEntitity? selectedCategory;
  @override
  @JsonKey()
  final bool isCategoriesLoading;
  @override
  @JsonKey()
  final bool isProductsLoading;
  @override
  @JsonKey()
  final bool isList;
  @override
  @JsonKey()
  final bool isPaginationLoading;

  @override
  String toString() {
    return 'SubcategoryState.ready(category: $category, categories: $categories, products: $products, selectedCategory: $selectedCategory, isCategoriesLoading: $isCategoriesLoading, isProductsLoading: $isProductsLoading, isList: $isList, isPaginationLoading: $isPaginationLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.isCategoriesLoading, isCategoriesLoading) ||
                other.isCategoriesLoading == isCategoriesLoading) &&
            (identical(other.isProductsLoading, isProductsLoading) ||
                other.isProductsLoading == isProductsLoading) &&
            (identical(other.isList, isList) || other.isList == isList) &&
            (identical(other.isPaginationLoading, isPaginationLoading) ||
                other.isPaginationLoading == isPaginationLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      category,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_products),
      selectedCategory,
      isCategoriesLoading,
      isProductsLoading,
      isList,
      isPaginationLoading);

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)
        ready,
  }) {
    return ready(category, categories, products, selectedCategory,
        isCategoriesLoading, isProductsLoading, isList, isPaginationLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)?
        ready,
  }) {
    return ready?.call(category, categories, products, selectedCategory,
        isCategoriesLoading, isProductsLoading, isList, isPaginationLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            CategoryEntitity category,
            List<CategoryEntitity> categories,
            List<ProductEntity> products,
            CategoryEntitity? selectedCategory,
            bool isCategoriesLoading,
            bool isProductsLoading,
            bool isList,
            bool isPaginationLoading)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(category, categories, products, selectedCategory,
          isCategoriesLoading, isProductsLoading, isList, isPaginationLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements SubcategoryState {
  const factory _Ready(
      {required final CategoryEntitity category,
      final List<CategoryEntitity> categories,
      final List<ProductEntity> products,
      final CategoryEntitity? selectedCategory,
      final bool isCategoriesLoading,
      final bool isProductsLoading,
      final bool isList,
      final bool isPaginationLoading}) = _$ReadyImpl;

  CategoryEntitity get category;
  List<CategoryEntitity> get categories;
  List<ProductEntity> get products;
  CategoryEntitity? get selectedCategory;
  bool get isCategoriesLoading;
  bool get isProductsLoading;
  bool get isList;
  bool get isPaginationLoading;

  /// Create a copy of SubcategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubcategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryEventCopyWith<$Res> {
  factory $SubcategoryEventCopyWith(
          SubcategoryEvent value, $Res Function(SubcategoryEvent) then) =
      _$SubcategoryEventCopyWithImpl<$Res, SubcategoryEvent>;
}

/// @nodoc
class _$SubcategoryEventCopyWithImpl<$Res, $Val extends SubcategoryEvent>
    implements $SubcategoryEventCopyWith<$Res> {
  _$SubcategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryEntitity category});

  $CategoryEntitityCopyWith<$Res> get category;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SubcategoryEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$InitImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntitity,
    ));
  }

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntitityCopyWith<$Res> get category {
    return $CategoryEntitityCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.category);

  @override
  final CategoryEntitity category;

  @override
  String toString() {
    return 'SubcategoryEvent.init(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) {
    return init(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) {
    return init?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements SubcategoryEvent {
  const factory _Init(final CategoryEntitity category) = _$InitImpl;

  CategoryEntitity get category;

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSubcategoriesImplCopyWith<$Res> {
  factory _$$LoadSubcategoriesImplCopyWith(_$LoadSubcategoriesImpl value,
          $Res Function(_$LoadSubcategoriesImpl) then) =
      __$$LoadSubcategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$LoadSubcategoriesImplCopyWithImpl<$Res>
    extends _$SubcategoryEventCopyWithImpl<$Res, _$LoadSubcategoriesImpl>
    implements _$$LoadSubcategoriesImplCopyWith<$Res> {
  __$$LoadSubcategoriesImplCopyWithImpl(_$LoadSubcategoriesImpl _value,
      $Res Function(_$LoadSubcategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$LoadSubcategoriesImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadSubcategoriesImpl implements _LoadSubcategories {
  const _$LoadSubcategoriesImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'SubcategoryEvent.loadSubcategories(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSubcategoriesImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSubcategoriesImplCopyWith<_$LoadSubcategoriesImpl> get copyWith =>
      __$$LoadSubcategoriesImplCopyWithImpl<_$LoadSubcategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) {
    return loadSubcategories(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) {
    return loadSubcategories?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) {
    if (loadSubcategories != null) {
      return loadSubcategories(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) {
    return loadSubcategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) {
    return loadSubcategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) {
    if (loadSubcategories != null) {
      return loadSubcategories(this);
    }
    return orElse();
  }
}

abstract class _LoadSubcategories implements SubcategoryEvent {
  const factory _LoadSubcategories(final int categoryId) =
      _$LoadSubcategoriesImpl;

  int get categoryId;

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSubcategoriesImplCopyWith<_$LoadSubcategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadProductsImplCopyWith<$Res> {
  factory _$$LoadProductsImplCopyWith(
          _$LoadProductsImpl value, $Res Function(_$LoadProductsImpl) then) =
      __$$LoadProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? categoryId});
}

/// @nodoc
class __$$LoadProductsImplCopyWithImpl<$Res>
    extends _$SubcategoryEventCopyWithImpl<$Res, _$LoadProductsImpl>
    implements _$$LoadProductsImplCopyWith<$Res> {
  __$$LoadProductsImplCopyWithImpl(
      _$LoadProductsImpl _value, $Res Function(_$LoadProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
  }) {
    return _then(_$LoadProductsImpl(
      freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadProductsImpl implements _LoadProducts {
  const _$LoadProductsImpl(this.categoryId);

  @override
  final int? categoryId;

  @override
  String toString() {
    return 'SubcategoryEvent.loadProducts(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProductsImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProductsImplCopyWith<_$LoadProductsImpl> get copyWith =>
      __$$LoadProductsImplCopyWithImpl<_$LoadProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) {
    return loadProducts(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) {
    return loadProducts?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadProducts implements SubcategoryEvent {
  const factory _LoadProducts(final int? categoryId) = _$LoadProductsImpl;

  int? get categoryId;

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadProductsImplCopyWith<_$LoadProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseSubcategoryImplCopyWith<$Res> {
  factory _$$ChooseSubcategoryImplCopyWith(_$ChooseSubcategoryImpl value,
          $Res Function(_$ChooseSubcategoryImpl) then) =
      __$$ChooseSubcategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryEntitity category});

  $CategoryEntitityCopyWith<$Res> get category;
}

/// @nodoc
class __$$ChooseSubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryEventCopyWithImpl<$Res, _$ChooseSubcategoryImpl>
    implements _$$ChooseSubcategoryImplCopyWith<$Res> {
  __$$ChooseSubcategoryImplCopyWithImpl(_$ChooseSubcategoryImpl _value,
      $Res Function(_$ChooseSubcategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$ChooseSubcategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntitity,
    ));
  }

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryEntitityCopyWith<$Res> get category {
    return $CategoryEntitityCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$ChooseSubcategoryImpl implements _ChooseSubcategory {
  const _$ChooseSubcategoryImpl(this.category);

  @override
  final CategoryEntitity category;

  @override
  String toString() {
    return 'SubcategoryEvent.chooseSubcategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseSubcategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseSubcategoryImplCopyWith<_$ChooseSubcategoryImpl> get copyWith =>
      __$$ChooseSubcategoryImplCopyWithImpl<_$ChooseSubcategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) {
    return chooseSubcategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) {
    return chooseSubcategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) {
    if (chooseSubcategory != null) {
      return chooseSubcategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) {
    return chooseSubcategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) {
    return chooseSubcategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) {
    if (chooseSubcategory != null) {
      return chooseSubcategory(this);
    }
    return orElse();
  }
}

abstract class _ChooseSubcategory implements SubcategoryEvent {
  const factory _ChooseSubcategory(final CategoryEntitity category) =
      _$ChooseSubcategoryImpl;

  CategoryEntitity get category;

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseSubcategoryImplCopyWith<_$ChooseSubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTypeToggleImplCopyWith<$Res> {
  factory _$$ListTypeToggleImplCopyWith(_$ListTypeToggleImpl value,
          $Res Function(_$ListTypeToggleImpl) then) =
      __$$ListTypeToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListTypeToggleImplCopyWithImpl<$Res>
    extends _$SubcategoryEventCopyWithImpl<$Res, _$ListTypeToggleImpl>
    implements _$$ListTypeToggleImplCopyWith<$Res> {
  __$$ListTypeToggleImplCopyWithImpl(
      _$ListTypeToggleImpl _value, $Res Function(_$ListTypeToggleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ListTypeToggleImpl implements _ListTypeToggle {
  const _$ListTypeToggleImpl();

  @override
  String toString() {
    return 'SubcategoryEvent.listTypeToggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListTypeToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) {
    return listTypeToggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) {
    return listTypeToggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) {
    if (listTypeToggle != null) {
      return listTypeToggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) {
    return listTypeToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) {
    return listTypeToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) {
    if (listTypeToggle != null) {
      return listTypeToggle(this);
    }
    return orElse();
  }
}

abstract class _ListTypeToggle implements SubcategoryEvent {
  const factory _ListTypeToggle() = _$ListTypeToggleImpl;
}

/// @nodoc
abstract class _$$ChangeCartStateImplCopyWith<$Res> {
  factory _$$ChangeCartStateImplCopyWith(_$ChangeCartStateImpl value,
          $Res Function(_$ChangeCartStateImpl) then) =
      __$$ChangeCartStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});

  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$ChangeCartStateImplCopyWithImpl<$Res>
    extends _$SubcategoryEventCopyWithImpl<$Res, _$ChangeCartStateImpl>
    implements _$$ChangeCartStateImplCopyWith<$Res> {
  __$$ChangeCartStateImplCopyWithImpl(
      _$ChangeCartStateImpl _value, $Res Function(_$ChangeCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ChangeCartStateImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ChangeCartStateImpl implements _ChangeCartState {
  const _$ChangeCartStateImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'SubcategoryEvent.changeCartState(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCartStateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCartStateImplCopyWith<_$ChangeCartStateImpl> get copyWith =>
      __$$ChangeCartStateImplCopyWithImpl<_$ChangeCartStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CategoryEntitity category) init,
    required TResult Function(int categoryId) loadSubcategories,
    required TResult Function(int? categoryId) loadProducts,
    required TResult Function(CategoryEntitity category) chooseSubcategory,
    required TResult Function() listTypeToggle,
    required TResult Function(ProductEntity product) changeCartState,
  }) {
    return changeCartState(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CategoryEntitity category)? init,
    TResult? Function(int categoryId)? loadSubcategories,
    TResult? Function(int? categoryId)? loadProducts,
    TResult? Function(CategoryEntitity category)? chooseSubcategory,
    TResult? Function()? listTypeToggle,
    TResult? Function(ProductEntity product)? changeCartState,
  }) {
    return changeCartState?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CategoryEntitity category)? init,
    TResult Function(int categoryId)? loadSubcategories,
    TResult Function(int? categoryId)? loadProducts,
    TResult Function(CategoryEntitity category)? chooseSubcategory,
    TResult Function()? listTypeToggle,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) {
    if (changeCartState != null) {
      return changeCartState(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_LoadSubcategories value) loadSubcategories,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChooseSubcategory value) chooseSubcategory,
    required TResult Function(_ListTypeToggle value) listTypeToggle,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) {
    return changeCartState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_LoadSubcategories value)? loadSubcategories,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult? Function(_ListTypeToggle value)? listTypeToggle,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) {
    return changeCartState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_LoadSubcategories value)? loadSubcategories,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChooseSubcategory value)? chooseSubcategory,
    TResult Function(_ListTypeToggle value)? listTypeToggle,
    TResult Function(_ChangeCartState value)? changeCartState,
    required TResult orElse(),
  }) {
    if (changeCartState != null) {
      return changeCartState(this);
    }
    return orElse();
  }
}

abstract class _ChangeCartState implements SubcategoryEvent {
  const factory _ChangeCartState(final ProductEntity product) =
      _$ChangeCartStateImpl;

  ProductEntity get product;

  /// Create a copy of SubcategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCartStateImplCopyWith<_$ChangeCartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
