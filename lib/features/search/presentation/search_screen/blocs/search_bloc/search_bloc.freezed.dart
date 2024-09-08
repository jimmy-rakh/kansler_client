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
    required TResult Function(List<ProductEntity> products,
            SearchEntity? filterData, bool isList, bool isMoreLoading)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
    required TResult Function(List<ProductEntity> products,
            SearchEntity? filterData, bool isList, bool isMoreLoading)
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
    TResult? Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
    TResult Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
      {List<ProductEntity> products,
      SearchEntity? filterData,
      bool isList,
      bool isMoreLoading});
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
    Object? products = null,
    Object? filterData = freezed,
    Object? isList = null,
    Object? isMoreLoading = null,
  }) {
    return _then(_$SuccessImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>,
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
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final List<ProductEntity> products,
      this.filterData,
      this.isList = true,
      this.isMoreLoading = false})
      : _products = products;

  final List<ProductEntity> _products;
  @override
  List<ProductEntity> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
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
  String toString() {
    return 'SearchState.success(products: $products, filterData: $filterData, isList: $isList, isMoreLoading: $isMoreLoading)';
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
                other.isMoreLoading == isMoreLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      filterData,
      isList,
      isMoreLoading);

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
    required TResult Function(List<ProductEntity> products,
            SearchEntity? filterData, bool isList, bool isMoreLoading)
        success,
    required TResult Function() notFound,
    required TResult Function() error,
  }) {
    return success(products, filterData, isList, isMoreLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
        success,
    TResult? Function()? notFound,
    TResult? Function()? error,
  }) {
    return success?.call(products, filterData, isList, isMoreLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
        success,
    TResult Function()? notFound,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products, filterData, isList, isMoreLoading);
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
      {required final List<ProductEntity> products,
      final SearchEntity? filterData,
      final bool isList,
      final bool isMoreLoading}) = _$SuccessImpl;

  List<ProductEntity> get products;
  SearchEntity? get filterData;
  bool get isList;
  bool get isMoreLoading;

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
    required TResult Function(List<ProductEntity> products,
            SearchEntity? filterData, bool isList, bool isMoreLoading)
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
    TResult? Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
    TResult Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
    required TResult Function(List<ProductEntity> products,
            SearchEntity? filterData, bool isList, bool isMoreLoading)
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
    TResult? Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
    TResult Function(List<ProductEntity> products, SearchEntity? filterData,
            bool isList, bool isMoreLoading)?
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore, String? title)? search,
    TResult? Function()? showFilters,
    TResult? Function()? changeListType,
    TResult? Function(ProductEntity product)? changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore, String? title)? search,
    TResult Function()? showFilters,
    TResult Function()? changeListType,
    TResult Function(ProductEntity product)? changeCartState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ShowFilters value) showFilters,
    required TResult Function(_ChangeListType value) changeListType,
    required TResult Function(_ChangeCartState value) changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ShowFilters value)? showFilters,
    TResult? Function(_ChangeListType value)? changeListType,
    TResult? Function(_ChangeCartState value)? changeCartState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ShowFilters value)? showFilters,
    TResult Function(_ChangeListType value)? changeListType,
    TResult Function(_ChangeCartState value)? changeCartState,
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
