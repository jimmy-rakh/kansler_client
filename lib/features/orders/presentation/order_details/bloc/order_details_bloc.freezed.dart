// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)?
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
abstract class $OrderDetailsStateCopyWith<$Res> {
  factory $OrderDetailsStateCopyWith(
          OrderDetailsState value, $Res Function(OrderDetailsState) then) =
      _$OrderDetailsStateCopyWithImpl<$Res, OrderDetailsState>;
}

/// @nodoc
class _$OrderDetailsStateCopyWithImpl<$Res, $Val extends OrderDetailsState>
    implements $OrderDetailsStateCopyWith<$Res> {
  _$OrderDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsState
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
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'OrderDetailsState.loadInProgress()';
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
    required TResult Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)
        ready,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)?
        ready,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)?
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

abstract class _LoadInProgress implements OrderDetailsState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OrdersDto? order,
      List<CartProduct>? orders,
      bool? isMoreLoading,
      int? id});

  $OrdersDtoCopyWith<$Res>? get order;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$OrderDetailsStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? orders = freezed,
    Object? isMoreLoading = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ReadyImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrdersDto?,
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>?,
      isMoreLoading: freezed == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrdersDtoCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrdersDtoCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {this.order,
      final List<CartProduct>? orders,
      this.isMoreLoading,
      this.id})
      : _orders = orders;

  @override
  final OrdersDto? order;
  final List<CartProduct>? _orders;
  @override
  List<CartProduct>? get orders {
    final value = _orders;
    if (value == null) return null;
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isMoreLoading;
  @override
  final int? id;

  @override
  String toString() {
    return 'OrderDetailsState.ready(order: $order, orders: $orders, isMoreLoading: $isMoreLoading, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order,
      const DeepCollectionEquality().hash(_orders), isMoreLoading, id);

  /// Create a copy of OrderDetailsState
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
    required TResult Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)
        ready,
  }) {
    return ready(order, orders, isMoreLoading, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)?
        ready,
  }) {
    return ready?.call(order, orders, isMoreLoading, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OrdersDto? order, List<CartProduct>? orders,
            bool? isMoreLoading, int? id)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(order, orders, isMoreLoading, id);
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

abstract class _Ready implements OrderDetailsState {
  const factory _Ready(
      {final OrdersDto? order,
      final List<CartProduct>? orders,
      final bool? isMoreLoading,
      final int? id}) = _$ReadyImpl;

  OrdersDto? get order;
  List<CartProduct>? get orders;
  bool? get isMoreLoading;
  int? get id;

  /// Create a copy of OrderDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderDetailsEvent {
  int? get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, CheckoutType type) fetchOrder,
    required TResult Function(
            int id, OrganizationDto organization, CheckoutType type)
        toDetails,
    required TResult Function(int? id, bool isMore, CheckoutType type) fetch,
    required TResult Function(num rating, int id) updateRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, CheckoutType type)? fetchOrder,
    TResult? Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult? Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult? Function(num rating, int id)? updateRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, CheckoutType type)? fetchOrder,
    TResult Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult Function(num rating, int id)? updateRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrder value) fetchOrder,
    required TResult Function(_ToDetails value) toDetails,
    required TResult Function(_FetchData value) fetch,
    required TResult Function(_UpdateRating value) updateRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrder value)? fetchOrder,
    TResult? Function(_ToDetails value)? toDetails,
    TResult? Function(_FetchData value)? fetch,
    TResult? Function(_UpdateRating value)? updateRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrder value)? fetchOrder,
    TResult Function(_ToDetails value)? toDetails,
    TResult Function(_FetchData value)? fetch,
    TResult Function(_UpdateRating value)? updateRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderDetailsEventCopyWith<OrderDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsEventCopyWith<$Res> {
  factory $OrderDetailsEventCopyWith(
          OrderDetailsEvent value, $Res Function(OrderDetailsEvent) then) =
      _$OrderDetailsEventCopyWithImpl<$Res, OrderDetailsEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$OrderDetailsEventCopyWithImpl<$Res, $Val extends OrderDetailsEvent>
    implements $OrderDetailsEventCopyWith<$Res> {
  _$OrderDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id!
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchOrderImplCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$$FetchOrderImplCopyWith(
          _$FetchOrderImpl value, $Res Function(_$FetchOrderImpl) then) =
      __$$FetchOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, CheckoutType type});
}

/// @nodoc
class __$$FetchOrderImplCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$FetchOrderImpl>
    implements _$$FetchOrderImplCopyWith<$Res> {
  __$$FetchOrderImplCopyWithImpl(
      _$FetchOrderImpl _value, $Res Function(_$FetchOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$FetchOrderImpl(
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

class _$FetchOrderImpl implements _FetchOrder {
  const _$FetchOrderImpl(this.id, this.type);

  @override
  final int id;
  @override
  final CheckoutType type;

  @override
  String toString() {
    return 'OrderDetailsEvent.fetchOrder(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrderImplCopyWith<_$FetchOrderImpl> get copyWith =>
      __$$FetchOrderImplCopyWithImpl<_$FetchOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, CheckoutType type) fetchOrder,
    required TResult Function(
            int id, OrganizationDto organization, CheckoutType type)
        toDetails,
    required TResult Function(int? id, bool isMore, CheckoutType type) fetch,
    required TResult Function(num rating, int id) updateRating,
  }) {
    return fetchOrder(id, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, CheckoutType type)? fetchOrder,
    TResult? Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult? Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult? Function(num rating, int id)? updateRating,
  }) {
    return fetchOrder?.call(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, CheckoutType type)? fetchOrder,
    TResult Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult Function(num rating, int id)? updateRating,
    required TResult orElse(),
  }) {
    if (fetchOrder != null) {
      return fetchOrder(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrder value) fetchOrder,
    required TResult Function(_ToDetails value) toDetails,
    required TResult Function(_FetchData value) fetch,
    required TResult Function(_UpdateRating value) updateRating,
  }) {
    return fetchOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrder value)? fetchOrder,
    TResult? Function(_ToDetails value)? toDetails,
    TResult? Function(_FetchData value)? fetch,
    TResult? Function(_UpdateRating value)? updateRating,
  }) {
    return fetchOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrder value)? fetchOrder,
    TResult Function(_ToDetails value)? toDetails,
    TResult Function(_FetchData value)? fetch,
    TResult Function(_UpdateRating value)? updateRating,
    required TResult orElse(),
  }) {
    if (fetchOrder != null) {
      return fetchOrder(this);
    }
    return orElse();
  }
}

abstract class _FetchOrder implements OrderDetailsEvent {
  const factory _FetchOrder(final int id, final CheckoutType type) =
      _$FetchOrderImpl;

  @override
  int get id;
  CheckoutType get type;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchOrderImplCopyWith<_$FetchOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToDetailsImplCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$$ToDetailsImplCopyWith(
          _$ToDetailsImpl value, $Res Function(_$ToDetailsImpl) then) =
      __$$ToDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, OrganizationDto organization, CheckoutType type});

  $OrganizationDtoCopyWith<$Res> get organization;
}

/// @nodoc
class __$$ToDetailsImplCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$ToDetailsImpl>
    implements _$$ToDetailsImplCopyWith<$Res> {
  __$$ToDetailsImplCopyWithImpl(
      _$ToDetailsImpl _value, $Res Function(_$ToDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = null,
    Object? type = null,
  }) {
    return _then(_$ToDetailsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationDto,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CheckoutType,
    ));
  }

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationDtoCopyWith<$Res> get organization {
    return $OrganizationDtoCopyWith<$Res>(_value.organization, (value) {
      return _then(_value.copyWith(organization: value));
    });
  }
}

/// @nodoc

class _$ToDetailsImpl implements _ToDetails {
  const _$ToDetailsImpl(this.id, this.organization, this.type);

  @override
  final int id;
  @override
  final OrganizationDto organization;
  @override
  final CheckoutType type;

  @override
  String toString() {
    return 'OrderDetailsEvent.toDetails(id: $id, organization: $organization, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, organization, type);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDetailsImplCopyWith<_$ToDetailsImpl> get copyWith =>
      __$$ToDetailsImplCopyWithImpl<_$ToDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, CheckoutType type) fetchOrder,
    required TResult Function(
            int id, OrganizationDto organization, CheckoutType type)
        toDetails,
    required TResult Function(int? id, bool isMore, CheckoutType type) fetch,
    required TResult Function(num rating, int id) updateRating,
  }) {
    return toDetails(id, organization, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, CheckoutType type)? fetchOrder,
    TResult? Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult? Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult? Function(num rating, int id)? updateRating,
  }) {
    return toDetails?.call(id, organization, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, CheckoutType type)? fetchOrder,
    TResult Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult Function(num rating, int id)? updateRating,
    required TResult orElse(),
  }) {
    if (toDetails != null) {
      return toDetails(id, organization, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrder value) fetchOrder,
    required TResult Function(_ToDetails value) toDetails,
    required TResult Function(_FetchData value) fetch,
    required TResult Function(_UpdateRating value) updateRating,
  }) {
    return toDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrder value)? fetchOrder,
    TResult? Function(_ToDetails value)? toDetails,
    TResult? Function(_FetchData value)? fetch,
    TResult? Function(_UpdateRating value)? updateRating,
  }) {
    return toDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrder value)? fetchOrder,
    TResult Function(_ToDetails value)? toDetails,
    TResult Function(_FetchData value)? fetch,
    TResult Function(_UpdateRating value)? updateRating,
    required TResult orElse(),
  }) {
    if (toDetails != null) {
      return toDetails(this);
    }
    return orElse();
  }
}

abstract class _ToDetails implements OrderDetailsEvent {
  const factory _ToDetails(final int id, final OrganizationDto organization,
      final CheckoutType type) = _$ToDetailsImpl;

  @override
  int get id;
  OrganizationDto get organization;
  CheckoutType get type;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDetailsImplCopyWith<_$ToDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, bool isMore, CheckoutType type});
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isMore = null,
    Object? type = null,
  }) {
    return _then(_$FetchDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isMore: null == isMore
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CheckoutType,
    ));
  }
}

/// @nodoc

class _$FetchDataImpl implements _FetchData {
  const _$FetchDataImpl(
      {this.id, this.isMore = false, this.type = CheckoutType.order});

  @override
  final int? id;
  @override
  @JsonKey()
  final bool isMore;
  @override
  @JsonKey()
  final CheckoutType type;

  @override
  String toString() {
    return 'OrderDetailsEvent.fetch(id: $id, isMore: $isMore, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isMore, isMore) || other.isMore == isMore) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isMore, type);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      __$$FetchDataImplCopyWithImpl<_$FetchDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, CheckoutType type) fetchOrder,
    required TResult Function(
            int id, OrganizationDto organization, CheckoutType type)
        toDetails,
    required TResult Function(int? id, bool isMore, CheckoutType type) fetch,
    required TResult Function(num rating, int id) updateRating,
  }) {
    return fetch(id, isMore, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, CheckoutType type)? fetchOrder,
    TResult? Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult? Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult? Function(num rating, int id)? updateRating,
  }) {
    return fetch?.call(id, isMore, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, CheckoutType type)? fetchOrder,
    TResult Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult Function(num rating, int id)? updateRating,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(id, isMore, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrder value) fetchOrder,
    required TResult Function(_ToDetails value) toDetails,
    required TResult Function(_FetchData value) fetch,
    required TResult Function(_UpdateRating value) updateRating,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrder value)? fetchOrder,
    TResult? Function(_ToDetails value)? toDetails,
    TResult? Function(_FetchData value)? fetch,
    TResult? Function(_UpdateRating value)? updateRating,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrder value)? fetchOrder,
    TResult Function(_ToDetails value)? toDetails,
    TResult Function(_FetchData value)? fetch,
    TResult Function(_UpdateRating value)? updateRating,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements OrderDetailsEvent {
  const factory _FetchData(
      {final int? id,
      final bool isMore,
      final CheckoutType type}) = _$FetchDataImpl;

  @override
  int? get id;
  bool get isMore;
  CheckoutType get type;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDataImplCopyWith<_$FetchDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRatingImplCopyWith<$Res>
    implements $OrderDetailsEventCopyWith<$Res> {
  factory _$$UpdateRatingImplCopyWith(
          _$UpdateRatingImpl value, $Res Function(_$UpdateRatingImpl) then) =
      __$$UpdateRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num rating, int id});
}

/// @nodoc
class __$$UpdateRatingImplCopyWithImpl<$Res>
    extends _$OrderDetailsEventCopyWithImpl<$Res, _$UpdateRatingImpl>
    implements _$$UpdateRatingImplCopyWith<$Res> {
  __$$UpdateRatingImplCopyWithImpl(
      _$UpdateRatingImpl _value, $Res Function(_$UpdateRatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? id = null,
  }) {
    return _then(_$UpdateRatingImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateRatingImpl implements _UpdateRating {
  const _$UpdateRatingImpl(this.rating, this.id);

  @override
  final num rating;
  @override
  final int id;

  @override
  String toString() {
    return 'OrderDetailsEvent.updateRating(rating: $rating, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRatingImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, id);

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRatingImplCopyWith<_$UpdateRatingImpl> get copyWith =>
      __$$UpdateRatingImplCopyWithImpl<_$UpdateRatingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, CheckoutType type) fetchOrder,
    required TResult Function(
            int id, OrganizationDto organization, CheckoutType type)
        toDetails,
    required TResult Function(int? id, bool isMore, CheckoutType type) fetch,
    required TResult Function(num rating, int id) updateRating,
  }) {
    return updateRating(rating, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, CheckoutType type)? fetchOrder,
    TResult? Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult? Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult? Function(num rating, int id)? updateRating,
  }) {
    return updateRating?.call(rating, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, CheckoutType type)? fetchOrder,
    TResult Function(int id, OrganizationDto organization, CheckoutType type)?
        toDetails,
    TResult Function(int? id, bool isMore, CheckoutType type)? fetch,
    TResult Function(num rating, int id)? updateRating,
    required TResult orElse(),
  }) {
    if (updateRating != null) {
      return updateRating(rating, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrder value) fetchOrder,
    required TResult Function(_ToDetails value) toDetails,
    required TResult Function(_FetchData value) fetch,
    required TResult Function(_UpdateRating value) updateRating,
  }) {
    return updateRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrder value)? fetchOrder,
    TResult? Function(_ToDetails value)? toDetails,
    TResult? Function(_FetchData value)? fetch,
    TResult? Function(_UpdateRating value)? updateRating,
  }) {
    return updateRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrder value)? fetchOrder,
    TResult Function(_ToDetails value)? toDetails,
    TResult Function(_FetchData value)? fetch,
    TResult Function(_UpdateRating value)? updateRating,
    required TResult orElse(),
  }) {
    if (updateRating != null) {
      return updateRating(this);
    }
    return orElse();
  }
}

abstract class _UpdateRating implements OrderDetailsEvent {
  const factory _UpdateRating(final num rating, final int id) =
      _$UpdateRatingImpl;

  num get rating;
  @override
  int get id;

  /// Create a copy of OrderDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRatingImplCopyWith<_$UpdateRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
