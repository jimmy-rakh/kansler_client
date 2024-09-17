// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
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
    extends _$SearchStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'SearchState.loadInProgress()';
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
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult Function()? notFound,
    TResult Function()? error,
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
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Error value) error,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Error value)? error,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SearchState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductEntity>? products,
      SearchEntity? filterData,
      bool isList,
      bool isMoreLoading,
      int activePage,
      List<ProductDataEntity> organizations});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? filterData = freezed,
    Object? isList = null,
    Object? isMoreLoading = null,
    Object? activePage = null,
    Object? organizations = null,
  }) {
    return _then(_$SuccessImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
      filterData: freezed == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as SearchEntity?,
      isList: null == isList
          ? _value.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool,
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      activePage: null == activePage
          ? _value.activePage
          : activePage // ignore: cast_nullable_to_non_nullable
              as int,
      organizations: null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<ProductDataEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {final List<ProductEntity>? products,
      this.filterData,
      this.isList = true,
      this.isMoreLoading = false,
      this.activePage = 0,
      final List<ProductDataEntity> organizations = const []})
      : _products = products,
        _organizations = organizations;

  final List<ProductEntity>? _products;
  @override
  List<ProductEntity>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchEntity? filterData;
  @override
  @JsonKey()
  final bool isList;
  @override
  @JsonKey()
  final bool isMoreLoading;
  @override
  @JsonKey()
  final int activePage;
  final List<ProductDataEntity> _organizations;
  @override
  @JsonKey()
  List<ProductDataEntity> get organizations {
    if (_organizations is EqualUnmodifiableListView) return _organizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  @override
  String toString() {
    return 'SearchState.success(products: $products, filterData: $filterData, isList: $isList, isMoreLoading: $isMoreLoading, activePage: $activePage, organizations: $organizations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.filterData, filterData) ||
                other.filterData == filterData) &&
            (identical(other.isList, isList) || other.isList == isList) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading) &&
            (identical(other.activePage, activePage) ||
                other.activePage == activePage) &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      filterData,
      isList,
      isMoreLoading,
      activePage,
      const DeepCollectionEquality().hash(_organizations));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return success(
        products, filterData, isList, isMoreLoading, activePage, organizations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) {
    return success?.call(
        products, filterData, isList, isMoreLoading, activePage, organizations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products, filterData, isList, isMoreLoading, activePage,
          organizations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchState {
  const factory _Success(
      {final List<ProductEntity>? products,
      final SearchEntity? filterData,
      final bool isList,
      final bool isMoreLoading,
      final int activePage,
      final List<ProductDataEntity> organizations}) = _$SuccessImpl;

  List<ProductEntity>? get products;
  SearchEntity? get filterData;
  bool get isList;
  bool get isMoreLoading;
  int get activePage;
  List<ProductDataEntity> get organizations;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'SearchState.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Error value) error,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Error value)? error,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements SearchState {
  const factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SearchState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(
            List<ProductEntity>? products,
            SearchEntity? filterData,
            bool isList,
            bool isMoreLoading,
            int activePage,
            List<ProductDataEntity> organizations)?
        success,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SearchState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMore, String? title});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMore = null,
    Object? title = freezed,
  }) {
    return _then(_$SearchImpl(
      isMore: null == isMore
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({this.isMore = false, this.title});

  @override
  @JsonKey()
  final bool isMore;
  @override
  final String? title;

  @override
  String toString() {
    return 'SearchEvent.search(isMore: $isMore, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.isMore, isMore) || other.isMore == isMore) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMore, title);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return search(isMore, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return search?.call(isMore, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(isMore, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search({final bool isMore, final String? title}) =
      _$SearchImpl;

  bool get isMore;
  String? get title;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowFiltersImplCopyWith<$Res> {
  factory _$$ShowFiltersImplCopyWith(
          _$ShowFiltersImpl value, $Res Function(_$ShowFiltersImpl) then) =
      __$$ShowFiltersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowFiltersImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ShowFiltersImpl>
    implements _$$ShowFiltersImplCopyWith<$Res> {
  __$$ShowFiltersImplCopyWithImpl(
      _$ShowFiltersImpl _value, $Res Function(_$ShowFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowFiltersImpl implements _ShowFilters {
  const _$ShowFiltersImpl();

  @override
  String toString() {
    return 'SearchEvent.showFilters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowFiltersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return showFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return showFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (showFilters != null) {
      return showFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return showFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return showFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (showFilters != null) {
      return showFilters(this);
    }
    return orElse();
  }
}

abstract class _ShowFilters implements SearchEvent {
  const factory _ShowFilters() = _$ShowFiltersImpl;
}

/// @nodoc
abstract class _$$ChangeListTypeImplCopyWith<$Res> {
  factory _$$ChangeListTypeImplCopyWith(_$ChangeListTypeImpl value,
          $Res Function(_$ChangeListTypeImpl) then) =
      __$$ChangeListTypeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeListTypeImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ChangeListTypeImpl>
    implements _$$ChangeListTypeImplCopyWith<$Res> {
  __$$ChangeListTypeImplCopyWithImpl(
      _$ChangeListTypeImpl _value, $Res Function(_$ChangeListTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeListTypeImpl implements _ChangeListType {
  const _$ChangeListTypeImpl();

  @override
  String toString() {
    return 'SearchEvent.changeListType()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeListTypeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return changeListType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return changeListType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (changeListType != null) {
      return changeListType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return changeListType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return changeListType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (changeListType != null) {
      return changeListType(this);
    }
    return orElse();
  }
}

abstract class _ChangeListType implements SearchEvent {
  const factory _ChangeListType() = _$ChangeListTypeImpl;
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
    extends _$SearchEventCopyWithImpl<$Res, _$ChangeCartStateImpl>
    implements _$$ChangeCartStateImplCopyWith<$Res> {
  __$$ChangeCartStateImplCopyWithImpl(
      _$ChangeCartStateImpl _value, $Res Function(_$ChangeCartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
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

  /// Create a copy of SearchEvent
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
    return 'SearchEvent.changeCartState(product: $product)';
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

  /// Create a copy of SearchEvent
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
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return changeCartState(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return changeCartState?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
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
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return changeCartState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return changeCartState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (changeCartState != null) {
      return changeCartState(this);
    }
    return orElse();
  }
}

abstract class _ChangeCartState implements SearchEvent {
  const factory _ChangeCartState(final ProductEntity product) =
      _$ChangeCartStateImpl;

  ProductEntity get product;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCartStateImplCopyWith<_$ChangeCartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchEntity searchData});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchData = null,
  }) {
    return _then(_$InitImpl(
      null == searchData
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as SearchEntity,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(this.searchData);

  @override
  final SearchEntity searchData;

  @override
  String toString() {
    return 'SearchEvent.init(searchData: $searchData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.searchData, searchData) ||
                other.searchData == searchData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchData);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return init(searchData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return init?.call(searchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(searchData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements SearchEvent {
  const factory _Init(final SearchEntity searchData) = _$InitImpl;

  SearchEntity get searchData;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseCategoriesImplCopyWith<$Res> {
  factory _$$ChooseCategoriesImplCopyWith(_$ChooseCategoriesImpl value,
          $Res Function(_$ChooseCategoriesImpl) then) =
      __$$ChooseCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChooseCategoriesImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ChooseCategoriesImpl>
    implements _$$ChooseCategoriesImplCopyWith<$Res> {
  __$$ChooseCategoriesImplCopyWithImpl(_$ChooseCategoriesImpl _value,
      $Res Function(_$ChooseCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChooseCategoriesImpl implements _ChooseCategories {
  const _$ChooseCategoriesImpl();

  @override
  String toString() {
    return 'SearchEvent.chooseCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChooseCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return chooseCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return chooseCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (chooseCategories != null) {
      return chooseCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return chooseCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return chooseCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (chooseCategories != null) {
      return chooseCategories(this);
    }
    return orElse();
  }
}

abstract class _ChooseCategories implements SearchEvent {
  const factory _ChooseCategories() = _$ChooseCategoriesImpl;
}

/// @nodoc
abstract class _$$ChooseOrganizationsImplCopyWith<$Res> {
  factory _$$ChooseOrganizationsImplCopyWith(_$ChooseOrganizationsImpl value,
          $Res Function(_$ChooseOrganizationsImpl) then) =
      __$$ChooseOrganizationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ChooseOrganizationsImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ChooseOrganizationsImpl>
    implements _$$ChooseOrganizationsImplCopyWith<$Res> {
  __$$ChooseOrganizationsImplCopyWithImpl(_$ChooseOrganizationsImpl _value,
      $Res Function(_$ChooseOrganizationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ChooseOrganizationsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChooseOrganizationsImpl implements _ChooseOrganizations {
  const _$ChooseOrganizationsImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SearchEvent.chooseOrganizations(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseOrganizationsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseOrganizationsImplCopyWith<_$ChooseOrganizationsImpl> get copyWith =>
      __$$ChooseOrganizationsImplCopyWithImpl<_$ChooseOrganizationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return chooseOrganizations(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return chooseOrganizations?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (chooseOrganizations != null) {
      return chooseOrganizations(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return chooseOrganizations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return chooseOrganizations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (chooseOrganizations != null) {
      return chooseOrganizations(this);
    }
    return orElse();
  }
}

abstract class _ChooseOrganizations implements SearchEvent {
  const factory _ChooseOrganizations(final int id) = _$ChooseOrganizationsImpl;

  int get id;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseOrganizationsImplCopyWith<_$ChooseOrganizationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseBrandsImplCopyWith<$Res> {
  factory _$$ChooseBrandsImplCopyWith(
          _$ChooseBrandsImpl value, $Res Function(_$ChooseBrandsImpl) then) =
      __$$ChooseBrandsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChooseBrandsImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ChooseBrandsImpl>
    implements _$$ChooseBrandsImplCopyWith<$Res> {
  __$$ChooseBrandsImplCopyWithImpl(
      _$ChooseBrandsImpl _value, $Res Function(_$ChooseBrandsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChooseBrandsImpl implements _ChooseBrands {
  const _$ChooseBrandsImpl();

  @override
  String toString() {
    return 'SearchEvent.chooseBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChooseBrandsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return chooseBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return chooseBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (chooseBrands != null) {
      return chooseBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return chooseBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return chooseBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (chooseBrands != null) {
      return chooseBrands(this);
    }
    return orElse();
  }
}

abstract class _ChooseBrands implements SearchEvent {
  const factory _ChooseBrands() = _$ChooseBrandsImpl;
}

/// @nodoc
abstract class _$$SetBaseViewImplCopyWith<$Res> {
  factory _$$SetBaseViewImplCopyWith(
          _$SetBaseViewImpl value, $Res Function(_$SetBaseViewImpl) then) =
      __$$SetBaseViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetBaseViewImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SetBaseViewImpl>
    implements _$$SetBaseViewImplCopyWith<$Res> {
  __$$SetBaseViewImplCopyWithImpl(
      _$SetBaseViewImpl _value, $Res Function(_$SetBaseViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetBaseViewImpl implements _SetBaseView {
  const _$SetBaseViewImpl();

  @override
  String toString() {
    return 'SearchEvent.setBaseView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetBaseViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return setBaseView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return setBaseView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (setBaseView != null) {
      return setBaseView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return setBaseView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return setBaseView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (setBaseView != null) {
      return setBaseView(this);
    }
    return orElse();
  }
}

abstract class _SetBaseView implements SearchEvent {
  const factory _SetBaseView() = _$SetBaseViewImpl;
}

/// @nodoc
abstract class _$$AddFilterImplCopyWith<$Res> {
  factory _$$AddFilterImplCopyWith(
          _$AddFilterImpl value, $Res Function(_$AddFilterImpl) then) =
      __$$AddFilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchEntity searchData});
}

/// @nodoc
class __$$AddFilterImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$AddFilterImpl>
    implements _$$AddFilterImplCopyWith<$Res> {
  __$$AddFilterImplCopyWithImpl(
      _$AddFilterImpl _value, $Res Function(_$AddFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchData = null,
  }) {
    return _then(_$AddFilterImpl(
      null == searchData
          ? _value.searchData
          : searchData // ignore: cast_nullable_to_non_nullable
              as SearchEntity,
    ));
  }
}

/// @nodoc

class _$AddFilterImpl implements _AddFilter {
  const _$AddFilterImpl(this.searchData);

  @override
  final SearchEntity searchData;

  @override
  String toString() {
    return 'SearchEvent.addFilter(searchData: $searchData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFilterImpl &&
            (identical(other.searchData, searchData) ||
                other.searchData == searchData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchData);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFilterImplCopyWith<_$AddFilterImpl> get copyWith =>
      __$$AddFilterImplCopyWithImpl<_$AddFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return addFilter(searchData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return addFilter?.call(searchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (addFilter != null) {
      return addFilter(searchData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return addFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return addFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (addFilter != null) {
      return addFilter(this);
    }
    return orElse();
  }
}

abstract class _AddFilter implements SearchEvent {
  const factory _AddFilter(final SearchEntity searchData) = _$AddFilterImpl;

  SearchEntity get searchData;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFilterImplCopyWith<_$AddFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderByImplCopyWith<$Res> {
  factory _$$OrderByImplCopyWith(
          _$OrderByImpl value, $Res Function(_$OrderByImpl) then) =
      __$$OrderByImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderBy});
}

/// @nodoc
class __$$OrderByImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$OrderByImpl>
    implements _$$OrderByImplCopyWith<$Res> {
  __$$OrderByImplCopyWithImpl(
      _$OrderByImpl _value, $Res Function(_$OrderByImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
  }) {
    return _then(_$OrderByImpl(
      null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderByImpl implements _OrderBy {
  const _$OrderByImpl(this.orderBy);

  @override
  final String orderBy;

  @override
  String toString() {
    return 'SearchEvent.orderBy(orderBy: $orderBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderByImpl &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderBy);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      __$$OrderByImplCopyWithImpl<_$OrderByImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return orderBy(this.orderBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return orderBy?.call(this.orderBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (orderBy != null) {
      return orderBy(this.orderBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return orderBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return orderBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (orderBy != null) {
      return orderBy(this);
    }
    return orElse();
  }
}

abstract class _OrderBy implements SearchEvent {
  const factory _OrderBy(final String orderBy) = _$OrderByImpl;

  String get orderBy;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceFromImplCopyWith<$Res> {
  factory _$$PriceFromImplCopyWith(
          _$PriceFromImpl value, $Res Function(_$PriceFromImpl) then) =
      __$$PriceFromImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? priceFrom});
}

/// @nodoc
class __$$PriceFromImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$PriceFromImpl>
    implements _$$PriceFromImplCopyWith<$Res> {
  __$$PriceFromImplCopyWithImpl(
      _$PriceFromImpl _value, $Res Function(_$PriceFromImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceFrom = freezed,
  }) {
    return _then(_$PriceFromImpl(
      freezed == priceFrom
          ? _value.priceFrom
          : priceFrom // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PriceFromImpl implements _PriceFrom {
  const _$PriceFromImpl(this.priceFrom);

  @override
  final int? priceFrom;

  @override
  String toString() {
    return 'SearchEvent.priceFrom(priceFrom: $priceFrom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceFromImpl &&
            (identical(other.priceFrom, priceFrom) ||
                other.priceFrom == priceFrom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priceFrom);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceFromImplCopyWith<_$PriceFromImpl> get copyWith =>
      __$$PriceFromImplCopyWithImpl<_$PriceFromImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return priceFrom(this.priceFrom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return priceFrom?.call(this.priceFrom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (priceFrom != null) {
      return priceFrom(this.priceFrom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return priceFrom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return priceFrom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (priceFrom != null) {
      return priceFrom(this);
    }
    return orElse();
  }
}

abstract class _PriceFrom implements SearchEvent {
  const factory _PriceFrom(final int? priceFrom) = _$PriceFromImpl;

  int? get priceFrom;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceFromImplCopyWith<_$PriceFromImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceToImplCopyWith<$Res> {
  factory _$$PriceToImplCopyWith(
          _$PriceToImpl value, $Res Function(_$PriceToImpl) then) =
      __$$PriceToImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? priceTo});
}

/// @nodoc
class __$$PriceToImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$PriceToImpl>
    implements _$$PriceToImplCopyWith<$Res> {
  __$$PriceToImplCopyWithImpl(
      _$PriceToImpl _value, $Res Function(_$PriceToImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceTo = freezed,
  }) {
    return _then(_$PriceToImpl(
      freezed == priceTo
          ? _value.priceTo
          : priceTo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PriceToImpl implements _PriceTo {
  const _$PriceToImpl(this.priceTo);

  @override
  final int? priceTo;

  @override
  String toString() {
    return 'SearchEvent.priceTo(priceTo: $priceTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceToImpl &&
            (identical(other.priceTo, priceTo) || other.priceTo == priceTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priceTo);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceToImplCopyWith<_$PriceToImpl> get copyWith =>
      __$$PriceToImplCopyWithImpl<_$PriceToImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore, String? title) search,
    required TResult Function() showFilters,
    required TResult Function() changeListType,
    required TResult Function(ProductEntity product) changeCartState,
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
    required TResult Function(int? priceFrom) priceFrom,
    required TResult Function(int? priceTo) priceTo,
  }) {
    return priceTo(this.priceTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
    TResult? Function(int? priceFrom)? priceFrom,
    TResult? Function(int? priceTo)? priceTo,
  }) {
    return priceTo?.call(this.priceTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    TResult Function(int? priceFrom)? priceFrom,
    TResult Function(int? priceTo)? priceTo,
    required TResult orElse(),
  }) {
    if (priceTo != null) {
      return priceTo(this.priceTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
    required TResult Function(_PriceFrom value) priceFrom,
    required TResult Function(_PriceTo value) priceTo,
  }) {
    return priceTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
    TResult? Function(_PriceFrom value)? priceFrom,
    TResult? Function(_PriceTo value)? priceTo,
  }) {
    return priceTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    TResult Function(_PriceFrom value)? priceFrom,
    TResult Function(_PriceTo value)? priceTo,
    required TResult orElse(),
  }) {
    if (priceTo != null) {
      return priceTo(this);
    }
    return orElse();
  }
}

abstract class _PriceTo implements SearchEvent {
  const factory _PriceTo(final int? priceTo) = _$PriceToImpl;

  int? get priceTo;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceToImplCopyWith<_$PriceToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
