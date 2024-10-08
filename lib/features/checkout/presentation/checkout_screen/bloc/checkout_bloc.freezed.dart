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
    required TResult Function(String? paymentType, String? deliveryType) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? paymentType, String? deliveryType)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? paymentType, String? deliveryType)? ready,
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
    required TResult Function(String? paymentType, String? deliveryType) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? paymentType, String? deliveryType)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? paymentType, String? deliveryType)? ready,
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
  $Res call({String? paymentType, String? deliveryType});
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
    Object? paymentType = freezed,
    Object? deliveryType = freezed,
  }) {
    return _then(_$ReadyImpl(
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryType: freezed == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl({this.paymentType, this.deliveryType});

  @override
  final String? paymentType;
  @override
  final String? deliveryType;

  @override
  String toString() {
    return 'CheckoutState.ready(paymentType: $paymentType, deliveryType: $deliveryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType, deliveryType);

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
    required TResult Function(String? paymentType, String? deliveryType) ready,
  }) {
    return ready(paymentType, deliveryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? paymentType, String? deliveryType)? ready,
  }) {
    return ready?.call(paymentType, deliveryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? paymentType, String? deliveryType)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(paymentType, deliveryType);
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
  const factory _Ready(
      {final String? paymentType, final String? deliveryType}) = _$ReadyImpl;

  String? get paymentType;
  String? get deliveryType;

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
    required TResult Function(CheckoutType type) checkOut,
    required TResult Function(String paymentType) paymentType,
    required TResult Function(String deliveryType) deliveryType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CheckoutType type)? checkOut,
    TResult? Function(String paymentType)? paymentType,
    TResult? Function(String deliveryType)? deliveryType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CheckoutType type)? checkOut,
    TResult Function(String paymentType)? paymentType,
    TResult Function(String deliveryType)? deliveryType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkOut,
    required TResult Function(_PaymentType value) paymentType,
    required TResult Function(_DeliveryType value) deliveryType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkOut,
    TResult? Function(_PaymentType value)? paymentType,
    TResult? Function(_DeliveryType value)? deliveryType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkOut,
    TResult Function(_PaymentType value)? paymentType,
    TResult Function(_DeliveryType value)? deliveryType,
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
abstract class _$$CheckoutImplCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckoutType type});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$CheckoutImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CheckoutType,
    ));
  }
}

/// @nodoc

class _$CheckoutImpl implements _Checkout {
  const _$CheckoutImpl(this.type);

  @override
  final CheckoutType type;

  @override
  String toString() {
    return 'CheckoutEvent.checkOut(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      __$$CheckoutImplCopyWithImpl<_$CheckoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CheckoutType type) checkOut,
    required TResult Function(String paymentType) paymentType,
    required TResult Function(String deliveryType) deliveryType,
  }) {
    return checkOut(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CheckoutType type)? checkOut,
    TResult? Function(String paymentType)? paymentType,
    TResult? Function(String deliveryType)? deliveryType,
  }) {
    return checkOut?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CheckoutType type)? checkOut,
    TResult Function(String paymentType)? paymentType,
    TResult Function(String deliveryType)? deliveryType,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkOut,
    required TResult Function(_PaymentType value) paymentType,
    required TResult Function(_DeliveryType value) deliveryType,
  }) {
    return checkOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkOut,
    TResult? Function(_PaymentType value)? paymentType,
    TResult? Function(_DeliveryType value)? deliveryType,
  }) {
    return checkOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkOut,
    TResult Function(_PaymentType value)? paymentType,
    TResult Function(_DeliveryType value)? deliveryType,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(this);
    }
    return orElse();
  }
}

abstract class _Checkout implements CheckoutEvent {
  const factory _Checkout(final CheckoutType type) = _$CheckoutImpl;

  CheckoutType get type;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutImplCopyWith<_$CheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentTypeImplCopyWith<$Res> {
  factory _$$PaymentTypeImplCopyWith(
          _$PaymentTypeImpl value, $Res Function(_$PaymentTypeImpl) then) =
      __$$PaymentTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String paymentType});
}

/// @nodoc
class __$$PaymentTypeImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$PaymentTypeImpl>
    implements _$$PaymentTypeImplCopyWith<$Res> {
  __$$PaymentTypeImplCopyWithImpl(
      _$PaymentTypeImpl _value, $Res Function(_$PaymentTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$PaymentTypeImpl(
      null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentTypeImpl implements _PaymentType {
  const _$PaymentTypeImpl(this.paymentType);

  @override
  final String paymentType;

  @override
  String toString() {
    return 'CheckoutEvent.paymentType(paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTypeImpl &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTypeImplCopyWith<_$PaymentTypeImpl> get copyWith =>
      __$$PaymentTypeImplCopyWithImpl<_$PaymentTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CheckoutType type) checkOut,
    required TResult Function(String paymentType) paymentType,
    required TResult Function(String deliveryType) deliveryType,
  }) {
    return paymentType(this.paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CheckoutType type)? checkOut,
    TResult? Function(String paymentType)? paymentType,
    TResult? Function(String deliveryType)? deliveryType,
  }) {
    return paymentType?.call(this.paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CheckoutType type)? checkOut,
    TResult Function(String paymentType)? paymentType,
    TResult Function(String deliveryType)? deliveryType,
    required TResult orElse(),
  }) {
    if (paymentType != null) {
      return paymentType(this.paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkOut,
    required TResult Function(_PaymentType value) paymentType,
    required TResult Function(_DeliveryType value) deliveryType,
  }) {
    return paymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkOut,
    TResult? Function(_PaymentType value)? paymentType,
    TResult? Function(_DeliveryType value)? deliveryType,
  }) {
    return paymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkOut,
    TResult Function(_PaymentType value)? paymentType,
    TResult Function(_DeliveryType value)? deliveryType,
    required TResult orElse(),
  }) {
    if (paymentType != null) {
      return paymentType(this);
    }
    return orElse();
  }
}

abstract class _PaymentType implements CheckoutEvent {
  const factory _PaymentType(final String paymentType) = _$PaymentTypeImpl;

  String get paymentType;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentTypeImplCopyWith<_$PaymentTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeliveryTypeImplCopyWith<$Res> {
  factory _$$DeliveryTypeImplCopyWith(
          _$DeliveryTypeImpl value, $Res Function(_$DeliveryTypeImpl) then) =
      __$$DeliveryTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deliveryType});
}

/// @nodoc
class __$$DeliveryTypeImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$DeliveryTypeImpl>
    implements _$$DeliveryTypeImplCopyWith<$Res> {
  __$$DeliveryTypeImplCopyWithImpl(
      _$DeliveryTypeImpl _value, $Res Function(_$DeliveryTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryType = null,
  }) {
    return _then(_$DeliveryTypeImpl(
      null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeliveryTypeImpl implements _DeliveryType {
  const _$DeliveryTypeImpl(this.deliveryType);

  @override
  final String deliveryType;

  @override
  String toString() {
    return 'CheckoutEvent.deliveryType(deliveryType: $deliveryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTypeImpl &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deliveryType);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTypeImplCopyWith<_$DeliveryTypeImpl> get copyWith =>
      __$$DeliveryTypeImplCopyWithImpl<_$DeliveryTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CheckoutType type) checkOut,
    required TResult Function(String paymentType) paymentType,
    required TResult Function(String deliveryType) deliveryType,
  }) {
    return deliveryType(this.deliveryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CheckoutType type)? checkOut,
    TResult? Function(String paymentType)? paymentType,
    TResult? Function(String deliveryType)? deliveryType,
  }) {
    return deliveryType?.call(this.deliveryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CheckoutType type)? checkOut,
    TResult Function(String paymentType)? paymentType,
    TResult Function(String deliveryType)? deliveryType,
    required TResult orElse(),
  }) {
    if (deliveryType != null) {
      return deliveryType(this.deliveryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Checkout value) checkOut,
    required TResult Function(_PaymentType value) paymentType,
    required TResult Function(_DeliveryType value) deliveryType,
  }) {
    return deliveryType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Checkout value)? checkOut,
    TResult? Function(_PaymentType value)? paymentType,
    TResult? Function(_DeliveryType value)? deliveryType,
  }) {
    return deliveryType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Checkout value)? checkOut,
    TResult Function(_PaymentType value)? paymentType,
    TResult Function(_DeliveryType value)? deliveryType,
    required TResult orElse(),
  }) {
    if (deliveryType != null) {
      return deliveryType(this);
    }
    return orElse();
  }
}

abstract class _DeliveryType implements CheckoutEvent {
  const factory _DeliveryType(final String deliveryType) = _$DeliveryTypeImpl;

  String get deliveryType;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryTypeImplCopyWith<_$DeliveryTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
