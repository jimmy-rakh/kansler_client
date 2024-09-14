// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int activePage,
            List<ProductDataEntity> organizations, SearchEntity search)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int activePage, List<ProductDataEntity> organizations,
            SearchEntity search)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int activePage, List<ProductDataEntity> organizations,
            SearchEntity search)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res, FilterState>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FilterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int activePage,
            List<ProductDataEntity> organizations, SearchEntity search)
        ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int activePage, List<ProductDataEntity> organizations,
            SearchEntity search)?
        ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int activePage, List<ProductDataEntity> organizations,
            SearchEntity search)?
        ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int activePage,
      List<ProductDataEntity> organizations,
      SearchEntity search});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activePage = null,
    Object? organizations = null,
    Object? search = null,
  }) {
    return _then(_$ReadyImpl(
      activePage: null == activePage
          ? _value.activePage
          : activePage // ignore: cast_nullable_to_non_nullable
              as int,
      organizations: null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<ProductDataEntity>,
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as SearchEntity,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {this.activePage = 0,
      final List<ProductDataEntity> organizations = const [],
      required this.search})
      : _organizations = organizations;

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
  final SearchEntity search;

  @override
  String toString() {
    return 'FilterState.ready(activePage: $activePage, organizations: $organizations, search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.activePage, activePage) ||
                other.activePage == activePage) &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations) &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activePage,
      const DeepCollectionEquality().hash(_organizations), search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int activePage,
            List<ProductDataEntity> organizations, SearchEntity search)
        ready,
  }) {
    return ready(activePage, organizations, search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int activePage, List<ProductDataEntity> organizations,
            SearchEntity search)?
        ready,
  }) {
    return ready?.call(activePage, organizations, search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int activePage, List<ProductDataEntity> organizations,
            SearchEntity search)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(activePage, organizations, search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements FilterState {
  const factory _Ready(
      {final int activePage,
      final List<ProductDataEntity> organizations,
      required final SearchEntity search}) = _$ReadyImpl;

  int get activePage;
  List<ProductDataEntity> get organizations;
  SearchEntity get search;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res, FilterEvent>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res, $Val extends FilterEvent>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$FilterEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

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
    return 'FilterEvent.init(searchData: $searchData)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return init(searchData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return init?.call(searchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements FilterEvent {
  const factory _Init(final SearchEntity searchData) = _$InitImpl;

  SearchEntity get searchData;
  @JsonKey(ignore: true)
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
    extends _$FilterEventCopyWithImpl<$Res, _$ChooseCategoriesImpl>
    implements _$$ChooseCategoriesImplCopyWith<$Res> {
  __$$ChooseCategoriesImplCopyWithImpl(_$ChooseCategoriesImpl _value,
      $Res Function(_$ChooseCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChooseCategoriesImpl implements _ChooseCategories {
  const _$ChooseCategoriesImpl();

  @override
  String toString() {
    return 'FilterEvent.chooseCategories()';
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
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return chooseCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return chooseCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return chooseCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return chooseCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (chooseCategories != null) {
      return chooseCategories(this);
    }
    return orElse();
  }
}

abstract class _ChooseCategories implements FilterEvent {
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
    extends _$FilterEventCopyWithImpl<$Res, _$ChooseOrganizationsImpl>
    implements _$$ChooseOrganizationsImplCopyWith<$Res> {
  __$$ChooseOrganizationsImplCopyWithImpl(_$ChooseOrganizationsImpl _value,
      $Res Function(_$ChooseOrganizationsImpl) _then)
      : super(_value, _then);

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
    return 'FilterEvent.chooseOrganizations(id: $id)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseOrganizationsImplCopyWith<_$ChooseOrganizationsImpl> get copyWith =>
      __$$ChooseOrganizationsImplCopyWithImpl<_$ChooseOrganizationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return chooseOrganizations(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return chooseOrganizations?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return chooseOrganizations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return chooseOrganizations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (chooseOrganizations != null) {
      return chooseOrganizations(this);
    }
    return orElse();
  }
}

abstract class _ChooseOrganizations implements FilterEvent {
  const factory _ChooseOrganizations(final int id) = _$ChooseOrganizationsImpl;

  int get id;
  @JsonKey(ignore: true)
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
    extends _$FilterEventCopyWithImpl<$Res, _$ChooseBrandsImpl>
    implements _$$ChooseBrandsImplCopyWith<$Res> {
  __$$ChooseBrandsImplCopyWithImpl(
      _$ChooseBrandsImpl _value, $Res Function(_$ChooseBrandsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChooseBrandsImpl implements _ChooseBrands {
  const _$ChooseBrandsImpl();

  @override
  String toString() {
    return 'FilterEvent.chooseBrands()';
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
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return chooseBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return chooseBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return chooseBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return chooseBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (chooseBrands != null) {
      return chooseBrands(this);
    }
    return orElse();
  }
}

abstract class _ChooseBrands implements FilterEvent {
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
    extends _$FilterEventCopyWithImpl<$Res, _$SetBaseViewImpl>
    implements _$$SetBaseViewImplCopyWith<$Res> {
  __$$SetBaseViewImplCopyWithImpl(
      _$SetBaseViewImpl _value, $Res Function(_$SetBaseViewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetBaseViewImpl implements _SetBaseView {
  const _$SetBaseViewImpl();

  @override
  String toString() {
    return 'FilterEvent.setBaseView()';
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
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return setBaseView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return setBaseView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return setBaseView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return setBaseView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (setBaseView != null) {
      return setBaseView(this);
    }
    return orElse();
  }
}

abstract class _SetBaseView implements FilterEvent {
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
    extends _$FilterEventCopyWithImpl<$Res, _$AddFilterImpl>
    implements _$$AddFilterImplCopyWith<$Res> {
  __$$AddFilterImplCopyWithImpl(
      _$AddFilterImpl _value, $Res Function(_$AddFilterImpl) _then)
      : super(_value, _then);

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
    return 'FilterEvent.addFilter(searchData: $searchData)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFilterImplCopyWith<_$AddFilterImpl> get copyWith =>
      __$$AddFilterImplCopyWithImpl<_$AddFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return addFilter(searchData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return addFilter?.call(searchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return addFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return addFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (addFilter != null) {
      return addFilter(this);
    }
    return orElse();
  }
}

abstract class _AddFilter implements FilterEvent {
  const factory _AddFilter(final SearchEntity searchData) = _$AddFilterImpl;

  SearchEntity get searchData;
  @JsonKey(ignore: true)
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
    extends _$FilterEventCopyWithImpl<$Res, _$OrderByImpl>
    implements _$$OrderByImplCopyWith<$Res> {
  __$$OrderByImplCopyWithImpl(
      _$OrderByImpl _value, $Res Function(_$OrderByImpl) _then)
      : super(_value, _then);

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
    return 'FilterEvent.orderBy(orderBy: $orderBy)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      __$$OrderByImplCopyWithImpl<_$OrderByImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) init,
    required TResult Function() chooseCategories,
    required TResult Function(int id) chooseOrganizations,
    required TResult Function() chooseBrands,
    required TResult Function() setBaseView,
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function(String orderBy) orderBy,
  }) {
    return orderBy(this.orderBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? init,
    TResult? Function()? chooseCategories,
    TResult? Function(int id)? chooseOrganizations,
    TResult? Function()? chooseBrands,
    TResult? Function()? setBaseView,
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function(String orderBy)? orderBy,
  }) {
    return orderBy?.call(this.orderBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? init,
    TResult Function()? chooseCategories,
    TResult Function(int id)? chooseOrganizations,
    TResult Function()? chooseBrands,
    TResult Function()? setBaseView,
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function(String orderBy)? orderBy,
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
    required TResult Function(_Init value) init,
    required TResult Function(_ChooseCategories value) chooseCategories,
    required TResult Function(_ChooseOrganizations value) chooseOrganizations,
    required TResult Function(_ChooseBrands value) chooseBrands,
    required TResult Function(_SetBaseView value) setBaseView,
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_OrderBy value) orderBy,
  }) {
    return orderBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_ChooseCategories value)? chooseCategories,
    TResult? Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult? Function(_ChooseBrands value)? chooseBrands,
    TResult? Function(_SetBaseView value)? setBaseView,
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_OrderBy value)? orderBy,
  }) {
    return orderBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_ChooseCategories value)? chooseCategories,
    TResult Function(_ChooseOrganizations value)? chooseOrganizations,
    TResult Function(_ChooseBrands value)? chooseBrands,
    TResult Function(_SetBaseView value)? setBaseView,
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_OrderBy value)? orderBy,
    required TResult orElse(),
  }) {
    if (orderBy != null) {
      return orderBy(this);
    }
    return orElse();
  }
}

abstract class _OrderBy implements FilterEvent {
  const factory _OrderBy(final String orderBy) = _$OrderByImpl;

  String get orderBy;
  @JsonKey(ignore: true)
  _$$OrderByImplCopyWith<_$OrderByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
