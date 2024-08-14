// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CompanyEntity chosedCompanies) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CompanyEntity chosedCompanies)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CompanyEntity chosedCompanies)? ready,
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
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckoutState.initial()';
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
    required TResult Function(CompanyEntity chosedCompanies) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CompanyEntity chosedCompanies)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CompanyEntity chosedCompanies)? ready,
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

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyEntity chosedCompanies});

  $CompanyEntityCopyWith<$Res> get chosedCompanies;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chosedCompanies = null,
  }) {
    return _then(_$ReadyImpl(
      null == chosedCompanies
          ? _value.chosedCompanies
          : chosedCompanies // ignore: cast_nullable_to_non_nullable
              as CompanyEntity,
    ));
  }

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyEntityCopyWith<$Res> get chosedCompanies {
    return $CompanyEntityCopyWith<$Res>(_value.chosedCompanies, (value) {
      return _then(_value.copyWith(chosedCompanies: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(this.chosedCompanies);

  @override
  final CompanyEntity chosedCompanies;

  @override
  String toString() {
    return 'CheckoutState.ready(chosedCompanies: $chosedCompanies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.chosedCompanies, chosedCompanies) ||
                other.chosedCompanies == chosedCompanies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chosedCompanies);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CompanyEntity chosedCompanies) ready,
  }) {
    return ready(chosedCompanies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CompanyEntity chosedCompanies)? ready,
  }) {
    return ready?.call(chosedCompanies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CompanyEntity chosedCompanies)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(chosedCompanies);
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

abstract class _Ready implements CheckoutState {
  const factory _Ready(final CompanyEntity chosedCompanies) = _$ReadyImpl;

  CompanyEntity get chosedCompanies;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrderProducts,
    required TResult Function(CompanyEntity? company) chooseCompany,
    required TResult Function() checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrderProducts,
    TResult? Function(CompanyEntity? company)? chooseCompany,
    TResult? Function()? checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrderProducts,
    TResult Function(CompanyEntity? company)? chooseCompany,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderProducts value) getOrderProducts,
    required TResult Function(_ChooseCompany value) chooseCompany,
    required TResult Function(_Checkout value) checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderProducts value)? getOrderProducts,
    TResult? Function(_ChooseCompany value)? chooseCompany,
    TResult? Function(_Checkout value)? checkOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderProducts value)? getOrderProducts,
    TResult Function(_ChooseCompany value)? chooseCompany,
    TResult Function(_Checkout value)? checkOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOrderProductsImplCopyWith<$Res> {
  factory _$$GetOrderProductsImplCopyWith(_$GetOrderProductsImpl value,
          $Res Function(_$GetOrderProductsImpl) then) =
      __$$GetOrderProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetOrderProductsImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$GetOrderProductsImpl>
    implements _$$GetOrderProductsImplCopyWith<$Res> {
  __$$GetOrderProductsImplCopyWithImpl(_$GetOrderProductsImpl _value,
      $Res Function(_$GetOrderProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetOrderProductsImpl implements _GetOrderProducts {
  const _$GetOrderProductsImpl();

  @override
  String toString() {
    return 'CheckoutEvent.getOrderProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetOrderProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrderProducts,
    required TResult Function(CompanyEntity? company) chooseCompany,
    required TResult Function() checkOut,
  }) {
    return getOrderProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrderProducts,
    TResult? Function(CompanyEntity? company)? chooseCompany,
    TResult? Function()? checkOut,
  }) {
    return getOrderProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrderProducts,
    TResult Function(CompanyEntity? company)? chooseCompany,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) {
    if (getOrderProducts != null) {
      return getOrderProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderProducts value) getOrderProducts,
    required TResult Function(_ChooseCompany value) chooseCompany,
    required TResult Function(_Checkout value) checkOut,
  }) {
    return getOrderProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderProducts value)? getOrderProducts,
    TResult? Function(_ChooseCompany value)? chooseCompany,
    TResult? Function(_Checkout value)? checkOut,
  }) {
    return getOrderProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderProducts value)? getOrderProducts,
    TResult Function(_ChooseCompany value)? chooseCompany,
    TResult Function(_Checkout value)? checkOut,
    required TResult orElse(),
  }) {
    if (getOrderProducts != null) {
      return getOrderProducts(this);
    }
    return orElse();
  }
}

abstract class _GetOrderProducts implements CheckoutEvent {
  const factory _GetOrderProducts() = _$GetOrderProductsImpl;
}

/// @nodoc
abstract class _$$ChooseCompanyImplCopyWith<$Res> {
  factory _$$ChooseCompanyImplCopyWith(
          _$ChooseCompanyImpl value, $Res Function(_$ChooseCompanyImpl) then) =
      __$$ChooseCompanyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CompanyEntity? company});

  $CompanyEntityCopyWith<$Res>? get company;
}

/// @nodoc
class __$$ChooseCompanyImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$ChooseCompanyImpl>
    implements _$$ChooseCompanyImplCopyWith<$Res> {
  __$$ChooseCompanyImplCopyWithImpl(
      _$ChooseCompanyImpl _value, $Res Function(_$ChooseCompanyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
  }) {
    return _then(_$ChooseCompanyImpl(
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyEntity?,
    ));
  }

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompanyEntityCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyEntityCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }
}

/// @nodoc

class _$ChooseCompanyImpl implements _ChooseCompany {
  const _$ChooseCompanyImpl({this.company});

  @override
  final CompanyEntity? company;

  @override
  String toString() {
    return 'CheckoutEvent.chooseCompany(company: $company)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseCompanyImpl &&
            (identical(other.company, company) || other.company == company));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseCompanyImplCopyWith<_$ChooseCompanyImpl> get copyWith =>
      __$$ChooseCompanyImplCopyWithImpl<_$ChooseCompanyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrderProducts,
    required TResult Function(CompanyEntity? company) chooseCompany,
    required TResult Function() checkOut,
  }) {
    return chooseCompany(company);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrderProducts,
    TResult? Function(CompanyEntity? company)? chooseCompany,
    TResult? Function()? checkOut,
  }) {
    return chooseCompany?.call(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrderProducts,
    TResult Function(CompanyEntity? company)? chooseCompany,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) {
    if (chooseCompany != null) {
      return chooseCompany(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderProducts value) getOrderProducts,
    required TResult Function(_ChooseCompany value) chooseCompany,
    required TResult Function(_Checkout value) checkOut,
  }) {
    return chooseCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderProducts value)? getOrderProducts,
    TResult? Function(_ChooseCompany value)? chooseCompany,
    TResult? Function(_Checkout value)? checkOut,
  }) {
    return chooseCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderProducts value)? getOrderProducts,
    TResult Function(_ChooseCompany value)? chooseCompany,
    TResult Function(_Checkout value)? checkOut,
    required TResult orElse(),
  }) {
    if (chooseCompany != null) {
      return chooseCompany(this);
    }
    return orElse();
  }
}

abstract class _ChooseCompany implements CheckoutEvent {
  const factory _ChooseCompany({final CompanyEntity? company}) =
      _$ChooseCompanyImpl;

  CompanyEntity? get company;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseCompanyImplCopyWith<_$ChooseCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckoutImpl implements _Checkout {
  const _$CheckoutImpl();

  @override
  String toString() {
    return 'CheckoutEvent.checkOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOrderProducts,
    required TResult Function(CompanyEntity? company) chooseCompany,
    required TResult Function() checkOut,
  }) {
    return checkOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getOrderProducts,
    TResult? Function(CompanyEntity? company)? chooseCompany,
    TResult? Function()? checkOut,
  }) {
    return checkOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOrderProducts,
    TResult Function(CompanyEntity? company)? chooseCompany,
    TResult Function()? checkOut,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOrderProducts value) getOrderProducts,
    required TResult Function(_ChooseCompany value) chooseCompany,
    required TResult Function(_Checkout value) checkOut,
  }) {
    return checkOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetOrderProducts value)? getOrderProducts,
    TResult? Function(_ChooseCompany value)? chooseCompany,
    TResult? Function(_Checkout value)? checkOut,
  }) {
    return checkOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOrderProducts value)? getOrderProducts,
    TResult Function(_ChooseCompany value)? chooseCompany,
    TResult Function(_Checkout value)? checkOut,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(this);
    }
    return orElse();
  }
}

abstract class _Checkout implements CheckoutEvent {
  const factory _Checkout() = _$CheckoutImpl;
}
