// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(int? index, List<PostersDto>? posters,
            PostersDto? poster, List<ProductEntity>? products)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerStateCopyWith<$Res> {
  factory $BannerStateCopyWith(
          BannerState value, $Res Function(BannerState) then) =
      _$BannerStateCopyWithImpl<$Res, BannerState>;
}

/// @nodoc
class _$BannerStateCopyWithImpl<$Res, $Val extends BannerState>
    implements $BannerStateCopyWith<$Res> {
  _$BannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerState
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
    extends _$BannerStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'BannerState.loadInProgress()';
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
    required TResult Function(int? index, List<PostersDto>? posters,
            PostersDto? poster, List<ProductEntity>? products)
        success,
    required TResult Function() failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult? Function()? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult Function()? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BannerState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? index,
      List<PostersDto>? posters,
      PostersDto? poster,
      List<ProductEntity>? products});

  $PostersDtoCopyWith<$Res>? get poster;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
    Object? posters = freezed,
    Object? poster = freezed,
    Object? products = freezed,
  }) {
    return _then(_$SuccessImpl(
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      posters: freezed == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<PostersDto>?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as PostersDto?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductEntity>?,
    ));
  }

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostersDtoCopyWith<$Res>? get poster {
    if (_value.poster == null) {
      return null;
    }

    return $PostersDtoCopyWith<$Res>(_value.poster!, (value) {
      return _then(_value.copyWith(poster: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {this.index = 0,
      final List<PostersDto>? posters,
      this.poster,
      final List<ProductEntity>? products})
      : _posters = posters,
        _products = products;

  @override
  @JsonKey()
  final int? index;
  final List<PostersDto>? _posters;
  @override
  List<PostersDto>? get posters {
    final value = _posters;
    if (value == null) return null;
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostersDto? poster;
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
  String toString() {
    return 'BannerState.success(index: $index, posters: $posters, poster: $poster, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality().equals(other._posters, _posters) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      const DeepCollectionEquality().hash(_posters),
      poster,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of BannerState
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
    required TResult Function(int? index, List<PostersDto>? posters,
            PostersDto? poster, List<ProductEntity>? products)
        success,
    required TResult Function() failure,
  }) {
    return success(index, posters, poster, products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult? Function()? failure,
  }) {
    return success?.call(index, posters, poster, products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(index, posters, poster, products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BannerState {
  const factory _Success(
      {final int? index,
      final List<PostersDto>? posters,
      final PostersDto? poster,
      final List<ProductEntity>? products}) = _$SuccessImpl;

  int? get index;
  List<PostersDto>? get posters;
  PostersDto? get poster;
  List<ProductEntity>? get products;

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$BannerStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'BannerState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(int? index, List<PostersDto>? posters,
            PostersDto? poster, List<ProductEntity>? products)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(int? index, List<PostersDto>? posters, PostersDto? poster,
            List<ProductEntity>? products)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements BannerState {
  const factory _Failure() = _$FailureImpl;
}

/// @nodoc
mixin _$BannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerEventCopyWith<$Res> {
  factory $BannerEventCopyWith(
          BannerEvent value, $Res Function(BannerEvent) then) =
      _$BannerEventCopyWithImpl<$Res, BannerEvent>;
}

/// @nodoc
class _$BannerEventCopyWithImpl<$Res, $Val extends BannerEvent>
    implements $BannerEventCopyWith<$Res> {
  _$BannerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'BannerEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements BannerEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$FetchByIdImplCopyWith<$Res> {
  factory _$$FetchByIdImplCopyWith(
          _$FetchByIdImpl value, $Res Function(_$FetchByIdImpl) then) =
      __$$FetchByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$FetchByIdImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$FetchByIdImpl>
    implements _$$FetchByIdImplCopyWith<$Res> {
  __$$FetchByIdImplCopyWithImpl(
      _$FetchByIdImpl _value, $Res Function(_$FetchByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$FetchByIdImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchByIdImpl implements _FetchById {
  const _$FetchByIdImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'BannerEvent.fetchById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchByIdImplCopyWith<_$FetchByIdImpl> get copyWith =>
      __$$FetchByIdImplCopyWithImpl<_$FetchByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return fetchById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return fetchById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchById != null) {
      return fetchById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return fetchById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return fetchById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchById != null) {
      return fetchById(this);
    }
    return orElse();
  }
}

abstract class _FetchById implements BannerEvent {
  const factory _FetchById(final int? id) = _$FetchByIdImpl;

  int? get id;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchByIdImplCopyWith<_$FetchByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchBannerProductsImplCopyWith<$Res> {
  factory _$$FetchBannerProductsImplCopyWith(_$FetchBannerProductsImpl value,
          $Res Function(_$FetchBannerProductsImpl) then) =
      __$$FetchBannerProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$FetchBannerProductsImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$FetchBannerProductsImpl>
    implements _$$FetchBannerProductsImplCopyWith<$Res> {
  __$$FetchBannerProductsImplCopyWithImpl(_$FetchBannerProductsImpl _value,
      $Res Function(_$FetchBannerProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$FetchBannerProductsImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchBannerProductsImpl implements _FetchBannerProducts {
  const _$FetchBannerProductsImpl(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'BannerEvent.fetchBannerProducts(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBannerProductsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchBannerProductsImplCopyWith<_$FetchBannerProductsImpl> get copyWith =>
      __$$FetchBannerProductsImplCopyWithImpl<_$FetchBannerProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return fetchBannerProducts(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return fetchBannerProducts?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchBannerProducts != null) {
      return fetchBannerProducts(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return fetchBannerProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return fetchBannerProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (fetchBannerProducts != null) {
      return fetchBannerProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchBannerProducts implements BannerEvent {
  const factory _FetchBannerProducts(final int? id) = _$FetchBannerProductsImpl;

  int? get id;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchBannerProductsImplCopyWith<_$FetchBannerProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangeImplCopyWith<$Res> {
  factory _$$OnChangeImplCopyWith(
          _$OnChangeImpl value, $Res Function(_$OnChangeImpl) then) =
      __$$OnChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$OnChangeImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$OnChangeImpl>
    implements _$$OnChangeImplCopyWith<$Res> {
  __$$OnChangeImplCopyWithImpl(
      _$OnChangeImpl _value, $Res Function(_$OnChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnChangeImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnChangeImpl implements _OnChange {
  const _$OnChangeImpl(this.index);

  @override
  final int? index;

  @override
  String toString() {
    return 'BannerEvent.onChange(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      __$$OnChangeImplCopyWithImpl<_$OnChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return onChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return onChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChange implements BannerEvent {
  const factory _OnChange(final int? index) = _$OnChangeImpl;

  int? get index;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNextImplCopyWith<$Res> {
  factory _$$OnNextImplCopyWith(
          _$OnNextImpl value, $Res Function(_$OnNextImpl) then) =
      __$$OnNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$OnNextImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$OnNextImpl>
    implements _$$OnNextImplCopyWith<$Res> {
  __$$OnNextImplCopyWithImpl(
      _$OnNextImpl _value, $Res Function(_$OnNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnNextImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnNextImpl implements _OnNext {
  const _$OnNextImpl(this.index);

  @override
  final int? index;

  @override
  String toString() {
    return 'BannerEvent.onNext(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNextImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNextImplCopyWith<_$OnNextImpl> get copyWith =>
      __$$OnNextImplCopyWithImpl<_$OnNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return onNext(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return onNext?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return onNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return onNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (onNext != null) {
      return onNext(this);
    }
    return orElse();
  }
}

abstract class _OnNext implements BannerEvent {
  const factory _OnNext(final int? index) = _$OnNextImpl;

  int? get index;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNextImplCopyWith<_$OnNextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPreviousImplCopyWith<$Res> {
  factory _$$OnPreviousImplCopyWith(
          _$OnPreviousImpl value, $Res Function(_$OnPreviousImpl) then) =
      __$$OnPreviousImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? index});
}

/// @nodoc
class __$$OnPreviousImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$OnPreviousImpl>
    implements _$$OnPreviousImplCopyWith<$Res> {
  __$$OnPreviousImplCopyWithImpl(
      _$OnPreviousImpl _value, $Res Function(_$OnPreviousImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnPreviousImpl(
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnPreviousImpl implements _OnPrevious {
  const _$OnPreviousImpl(this.index);

  @override
  final int? index;

  @override
  String toString() {
    return 'BannerEvent.onPrevious(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPreviousImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPreviousImplCopyWith<_$OnPreviousImpl> get copyWith =>
      __$$OnPreviousImplCopyWithImpl<_$OnPreviousImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return onPrevious(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return onPrevious?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (onPrevious != null) {
      return onPrevious(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return onPrevious(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return onPrevious?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (onPrevious != null) {
      return onPrevious(this);
    }
    return orElse();
  }
}

abstract class _OnPrevious implements BannerEvent {
  const factory _OnPrevious(final int? index) = _$OnPreviousImpl;

  int? get index;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPreviousImplCopyWith<_$OnPreviousImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, CheckoutType type});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$BannerEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$AddToCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CheckoutType,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.id, this.type);

  @override
  final int id;
  @override
  final CheckoutType type;

  @override
  String toString() {
    return 'BannerEvent.addToCart(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(int? id) fetchById,
    required TResult Function(int? id) fetchBannerProducts,
    required TResult Function(int? index) onChange,
    required TResult Function(int? index) onNext,
    required TResult Function(int? index) onPrevious,
    required TResult Function(int id, CheckoutType type) addToCart,
  }) {
    return addToCart(id, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(int? id)? fetchById,
    TResult? Function(int? id)? fetchBannerProducts,
    TResult? Function(int? index)? onChange,
    TResult? Function(int? index)? onNext,
    TResult? Function(int? index)? onPrevious,
    TResult? Function(int id, CheckoutType type)? addToCart,
  }) {
    return addToCart?.call(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(int? id)? fetchById,
    TResult Function(int? id)? fetchBannerProducts,
    TResult Function(int? index)? onChange,
    TResult Function(int? index)? onNext,
    TResult Function(int? index)? onPrevious,
    TResult Function(int id, CheckoutType type)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchById value) fetchById,
    required TResult Function(_FetchBannerProducts value) fetchBannerProducts,
    required TResult Function(_OnChange value) onChange,
    required TResult Function(_OnNext value) onNext,
    required TResult Function(_OnPrevious value) onPrevious,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchById value)? fetchById,
    TResult? Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult? Function(_OnChange value)? onChange,
    TResult? Function(_OnNext value)? onNext,
    TResult? Function(_OnPrevious value)? onPrevious,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchById value)? fetchById,
    TResult Function(_FetchBannerProducts value)? fetchBannerProducts,
    TResult Function(_OnChange value)? onChange,
    TResult Function(_OnNext value)? onNext,
    TResult Function(_OnPrevious value)? onPrevious,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements BannerEvent {
  const factory _AddToCart(final int id, final CheckoutType type) =
      _$AddToCartImpl;

  int get id;
  CheckoutType get type;

  /// Create a copy of BannerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
