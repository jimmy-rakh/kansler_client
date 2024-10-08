// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PricesState {
  PricesStatus get status => throw _privateConstructorUsedError;
  SearchEntity? get filterData => throw _privateConstructorUsedError;

  /// Create a copy of PricesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricesStateCopyWith<PricesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesStateCopyWith<$Res> {
  factory $PricesStateCopyWith(
          PricesState value, $Res Function(PricesState) then) =
      _$PricesStateCopyWithImpl<$Res, PricesState>;
  @useResult
  $Res call({PricesStatus status, SearchEntity? filterData});
}

/// @nodoc
class _$PricesStateCopyWithImpl<$Res, $Val extends PricesState>
    implements $PricesStateCopyWith<$Res> {
  _$PricesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? filterData = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PricesStatus,
      filterData: freezed == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as SearchEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricesStateImplCopyWith<$Res>
    implements $PricesStateCopyWith<$Res> {
  factory _$$PricesStateImplCopyWith(
          _$PricesStateImpl value, $Res Function(_$PricesStateImpl) then) =
      __$$PricesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PricesStatus status, SearchEntity? filterData});
}

/// @nodoc
class __$$PricesStateImplCopyWithImpl<$Res>
    extends _$PricesStateCopyWithImpl<$Res, _$PricesStateImpl>
    implements _$$PricesStateImplCopyWith<$Res> {
  __$$PricesStateImplCopyWithImpl(
      _$PricesStateImpl _value, $Res Function(_$PricesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PricesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? filterData = freezed,
  }) {
    return _then(_$PricesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PricesStatus,
      filterData: freezed == filterData
          ? _value.filterData
          : filterData // ignore: cast_nullable_to_non_nullable
              as SearchEntity?,
    ));
  }
}

/// @nodoc

class _$PricesStateImpl implements _PricesState {
  const _$PricesStateImpl({this.status = PricesStatus.loaded, this.filterData});

  @override
  @JsonKey()
  final PricesStatus status;
  @override
  final SearchEntity? filterData;

  @override
  String toString() {
    return 'PricesState(status: $status, filterData: $filterData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filterData, filterData) ||
                other.filterData == filterData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, filterData);

  /// Create a copy of PricesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricesStateImplCopyWith<_$PricesStateImpl> get copyWith =>
      __$$PricesStateImplCopyWithImpl<_$PricesStateImpl>(this, _$identity);
}

abstract class _PricesState implements PricesState {
  const factory _PricesState(
      {final PricesStatus status,
      final SearchEntity? filterData}) = _$PricesStateImpl;

  @override
  PricesStatus get status;
  @override
  SearchEntity? get filterData;

  /// Create a copy of PricesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricesStateImplCopyWith<_$PricesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PricesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function() getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function()? getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function()? getLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_GetLink value) getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_GetLink value)? getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_GetLink value)? getLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesEventCopyWith<$Res> {
  factory $PricesEventCopyWith(
          PricesEvent value, $Res Function(PricesEvent) then) =
      _$PricesEventCopyWithImpl<$Res, PricesEvent>;
}

/// @nodoc
class _$PricesEventCopyWithImpl<$Res, $Val extends PricesEvent>
    implements $PricesEventCopyWith<$Res> {
  _$PricesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricesEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$PricesEventCopyWithImpl<$Res, _$AddFilterImpl>
    implements _$$AddFilterImplCopyWith<$Res> {
  __$$AddFilterImplCopyWithImpl(
      _$AddFilterImpl _value, $Res Function(_$AddFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of PricesEvent
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
    return 'PricesEvent.addFilter(searchData: $searchData)';
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

  /// Create a copy of PricesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFilterImplCopyWith<_$AddFilterImpl> get copyWith =>
      __$$AddFilterImplCopyWithImpl<_$AddFilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function() getLink,
  }) {
    return addFilter(searchData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function()? getLink,
  }) {
    return addFilter?.call(searchData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function()? getLink,
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
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_GetLink value) getLink,
  }) {
    return addFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_GetLink value)? getLink,
  }) {
    return addFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_GetLink value)? getLink,
    required TResult orElse(),
  }) {
    if (addFilter != null) {
      return addFilter(this);
    }
    return orElse();
  }
}

abstract class _AddFilter implements PricesEvent {
  const factory _AddFilter(final SearchEntity searchData) = _$AddFilterImpl;

  SearchEntity get searchData;

  /// Create a copy of PricesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFilterImplCopyWith<_$AddFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLinkImplCopyWith<$Res> {
  factory _$$GetLinkImplCopyWith(
          _$GetLinkImpl value, $Res Function(_$GetLinkImpl) then) =
      __$$GetLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLinkImplCopyWithImpl<$Res>
    extends _$PricesEventCopyWithImpl<$Res, _$GetLinkImpl>
    implements _$$GetLinkImplCopyWith<$Res> {
  __$$GetLinkImplCopyWithImpl(
      _$GetLinkImpl _value, $Res Function(_$GetLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of PricesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLinkImpl implements _GetLink {
  const _$GetLinkImpl();

  @override
  String toString() {
    return 'PricesEvent.getLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchEntity searchData) addFilter,
    required TResult Function() getLink,
  }) {
    return getLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchEntity searchData)? addFilter,
    TResult? Function()? getLink,
  }) {
    return getLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchEntity searchData)? addFilter,
    TResult Function()? getLink,
    required TResult orElse(),
  }) {
    if (getLink != null) {
      return getLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFilter value) addFilter,
    required TResult Function(_GetLink value) getLink,
  }) {
    return getLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFilter value)? addFilter,
    TResult? Function(_GetLink value)? getLink,
  }) {
    return getLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFilter value)? addFilter,
    TResult Function(_GetLink value)? getLink,
    required TResult orElse(),
  }) {
    if (getLink != null) {
      return getLink(this);
    }
    return orElse();
  }
}

abstract class _GetLink implements PricesEvent {
  const factory _GetLink() = _$GetLinkImpl;
}
