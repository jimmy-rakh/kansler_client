// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)?
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
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'OrdersState.loadInProgress()';
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
    required TResult Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)
        ready,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)?
        ready,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)?
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

abstract class _LoadInProgress implements OrdersState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool isMoreLoading, List<OrdersDto> orders, List<OrdersDto> preorders});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMoreLoading = null,
    Object? orders = null,
    Object? preorders = null,
  }) {
    return _then(_$ReadyImpl(
      isMoreLoading: null == isMoreLoading
          ? _value.isMoreLoading
          : isMoreLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrdersDto>,
      preorders: null == preorders
          ? _value._preorders
          : preorders // ignore: cast_nullable_to_non_nullable
              as List<OrdersDto>,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl(
      {this.isMoreLoading = false,
      final List<OrdersDto> orders = const [],
      final List<OrdersDto> preorders = const []})
      : _orders = orders,
        _preorders = preorders;

  @override
  @JsonKey()
  final bool isMoreLoading;
  final List<OrdersDto> _orders;
  @override
  @JsonKey()
  List<OrdersDto> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<OrdersDto> _preorders;
  @override
  @JsonKey()
  List<OrdersDto> get preorders {
    if (_preorders is EqualUnmodifiableListView) return _preorders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preorders);
  }

  @override
  String toString() {
    return 'OrdersState.ready(isMoreLoading: $isMoreLoading, orders: $orders, preorders: $preorders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.isMoreLoading, isMoreLoading) ||
                other.isMoreLoading == isMoreLoading) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._preorders, _preorders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMoreLoading,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_preorders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)
        ready,
  }) {
    return ready(isMoreLoading, orders, preorders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)?
        ready,
  }) {
    return ready?.call(isMoreLoading, orders, preorders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(bool isMoreLoading, List<OrdersDto> orders,
            List<OrdersDto> preorders)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(isMoreLoading, orders, preorders);
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

abstract class _Ready implements OrdersState {
  const factory _Ready(
      {final bool isMoreLoading,
      final List<OrdersDto> orders,
      final List<OrdersDto> preorders}) = _$ReadyImpl;

  bool get isMoreLoading;
  List<OrdersDto> get orders;
  List<OrdersDto> get preorders;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore) fetchOrders,
    required TResult Function(bool isMore) fetchPreorders,
    required TResult Function(int id, CheckoutType type) toOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore)? fetchOrders,
    TResult? Function(bool isMore)? fetchPreorders,
    TResult? Function(int id, CheckoutType type)? toOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore)? fetchOrders,
    TResult Function(bool isMore)? fetchPreorders,
    TResult Function(int id, CheckoutType type)? toOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchPreorders value) fetchPreorders,
    required TResult Function(_ToOrder value) toOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchPreorders value)? fetchPreorders,
    TResult? Function(_ToOrder value)? toOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchPreorders value)? fetchPreorders,
    TResult Function(_ToOrder value)? toOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchOrdersImplCopyWith<$Res> {
  factory _$$FetchOrdersImplCopyWith(
          _$FetchOrdersImpl value, $Res Function(_$FetchOrdersImpl) then) =
      __$$FetchOrdersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMore});
}

/// @nodoc
class __$$FetchOrdersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$FetchOrdersImpl>
    implements _$$FetchOrdersImplCopyWith<$Res> {
  __$$FetchOrdersImplCopyWithImpl(
      _$FetchOrdersImpl _value, $Res Function(_$FetchOrdersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMore = null,
  }) {
    return _then(_$FetchOrdersImpl(
      isMore: null == isMore
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchOrdersImpl implements _FetchOrders {
  const _$FetchOrdersImpl({this.isMore = false});

  @override
  @JsonKey()
  final bool isMore;

  @override
  String toString() {
    return 'OrdersEvent.fetchOrders(isMore: $isMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOrdersImpl &&
            (identical(other.isMore, isMore) || other.isMore == isMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOrdersImplCopyWith<_$FetchOrdersImpl> get copyWith =>
      __$$FetchOrdersImplCopyWithImpl<_$FetchOrdersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore) fetchOrders,
    required TResult Function(bool isMore) fetchPreorders,
    required TResult Function(int id, CheckoutType type) toOrder,
  }) {
    return fetchOrders(isMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore)? fetchOrders,
    TResult? Function(bool isMore)? fetchPreorders,
    TResult? Function(int id, CheckoutType type)? toOrder,
  }) {
    return fetchOrders?.call(isMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore)? fetchOrders,
    TResult Function(bool isMore)? fetchPreorders,
    TResult Function(int id, CheckoutType type)? toOrder,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders(isMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchPreorders value) fetchPreorders,
    required TResult Function(_ToOrder value) toOrder,
  }) {
    return fetchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchPreorders value)? fetchPreorders,
    TResult? Function(_ToOrder value)? toOrder,
  }) {
    return fetchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchPreorders value)? fetchPreorders,
    TResult Function(_ToOrder value)? toOrder,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders(this);
    }
    return orElse();
  }
}

abstract class _FetchOrders implements OrdersEvent {
  const factory _FetchOrders({final bool isMore}) = _$FetchOrdersImpl;

  bool get isMore;
  @JsonKey(ignore: true)
  _$$FetchOrdersImplCopyWith<_$FetchOrdersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPreordersImplCopyWith<$Res> {
  factory _$$FetchPreordersImplCopyWith(_$FetchPreordersImpl value,
          $Res Function(_$FetchPreordersImpl) then) =
      __$$FetchPreordersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMore});
}

/// @nodoc
class __$$FetchPreordersImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$FetchPreordersImpl>
    implements _$$FetchPreordersImplCopyWith<$Res> {
  __$$FetchPreordersImplCopyWithImpl(
      _$FetchPreordersImpl _value, $Res Function(_$FetchPreordersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMore = null,
  }) {
    return _then(_$FetchPreordersImpl(
      isMore: null == isMore
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchPreordersImpl implements _FetchPreorders {
  const _$FetchPreordersImpl({this.isMore = false});

  @override
  @JsonKey()
  final bool isMore;

  @override
  String toString() {
    return 'OrdersEvent.fetchPreorders(isMore: $isMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPreordersImpl &&
            (identical(other.isMore, isMore) || other.isMore == isMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPreordersImplCopyWith<_$FetchPreordersImpl> get copyWith =>
      __$$FetchPreordersImplCopyWithImpl<_$FetchPreordersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore) fetchOrders,
    required TResult Function(bool isMore) fetchPreorders,
    required TResult Function(int id, CheckoutType type) toOrder,
  }) {
    return fetchPreorders(isMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore)? fetchOrders,
    TResult? Function(bool isMore)? fetchPreorders,
    TResult? Function(int id, CheckoutType type)? toOrder,
  }) {
    return fetchPreorders?.call(isMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore)? fetchOrders,
    TResult Function(bool isMore)? fetchPreorders,
    TResult Function(int id, CheckoutType type)? toOrder,
    required TResult orElse(),
  }) {
    if (fetchPreorders != null) {
      return fetchPreorders(isMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchPreorders value) fetchPreorders,
    required TResult Function(_ToOrder value) toOrder,
  }) {
    return fetchPreorders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchPreorders value)? fetchPreorders,
    TResult? Function(_ToOrder value)? toOrder,
  }) {
    return fetchPreorders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchPreorders value)? fetchPreorders,
    TResult Function(_ToOrder value)? toOrder,
    required TResult orElse(),
  }) {
    if (fetchPreorders != null) {
      return fetchPreorders(this);
    }
    return orElse();
  }
}

abstract class _FetchPreorders implements OrdersEvent {
  const factory _FetchPreorders({final bool isMore}) = _$FetchPreordersImpl;

  bool get isMore;
  @JsonKey(ignore: true)
  _$$FetchPreordersImplCopyWith<_$FetchPreordersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToOrderImplCopyWith<$Res> {
  factory _$$ToOrderImplCopyWith(
          _$ToOrderImpl value, $Res Function(_$ToOrderImpl) then) =
      __$$ToOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, CheckoutType type});
}

/// @nodoc
class __$$ToOrderImplCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$ToOrderImpl>
    implements _$$ToOrderImplCopyWith<$Res> {
  __$$ToOrderImplCopyWithImpl(
      _$ToOrderImpl _value, $Res Function(_$ToOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$ToOrderImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CheckoutType,
    ));
  }
}

/// @nodoc

class _$ToOrderImpl implements _ToOrder {
  const _$ToOrderImpl(this.id, {this.type = CheckoutType.order});

  @override
  final int id;
  @override
  @JsonKey()
  final CheckoutType type;

  @override
  String toString() {
    return 'OrdersEvent.toOrder(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToOrderImplCopyWith<_$ToOrderImpl> get copyWith =>
      __$$ToOrderImplCopyWithImpl<_$ToOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMore) fetchOrders,
    required TResult Function(bool isMore) fetchPreorders,
    required TResult Function(int id, CheckoutType type) toOrder,
  }) {
    return toOrder(id, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMore)? fetchOrders,
    TResult? Function(bool isMore)? fetchPreorders,
    TResult? Function(int id, CheckoutType type)? toOrder,
  }) {
    return toOrder?.call(id, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMore)? fetchOrders,
    TResult Function(bool isMore)? fetchPreorders,
    TResult Function(int id, CheckoutType type)? toOrder,
    required TResult orElse(),
  }) {
    if (toOrder != null) {
      return toOrder(id, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_FetchPreorders value) fetchPreorders,
    required TResult Function(_ToOrder value) toOrder,
  }) {
    return toOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_FetchPreorders value)? fetchPreorders,
    TResult? Function(_ToOrder value)? toOrder,
  }) {
    return toOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_FetchPreorders value)? fetchPreorders,
    TResult Function(_ToOrder value)? toOrder,
    required TResult orElse(),
  }) {
    if (toOrder != null) {
      return toOrder(this);
    }
    return orElse();
  }
}

abstract class _ToOrder implements OrdersEvent {
  const factory _ToOrder(final int id, {final CheckoutType type}) =
      _$ToOrderImpl;

  int get id;
  CheckoutType get type;
  @JsonKey(ignore: true)
  _$$ToOrderImplCopyWith<_$ToOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
