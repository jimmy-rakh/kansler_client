// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  int get id => throw _privateConstructorUsedError;
  ProductDataDto? get organization => throw _privateConstructorUsedError;
  ProductDataDto? get category => throw _privateConstructorUsedError;
  ProductDataDto? get brand => throw _privateConstructorUsedError;
  ProductDataDto? get madeIn => throw _privateConstructorUsedError;
  String? get classifierCode => throw _privateConstructorUsedError;
  String? get classifierTitle => throw _privateConstructorUsedError;
  String? get packagename => throw _privateConstructorUsedError;
  String? get packagecode => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get vendorCode => throw _privateConstructorUsedError;
  String? get nds => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get priceDiscount => throw _privateConstructorUsedError;
  String? get measure => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get actual => throw _privateConstructorUsedError;
  bool? get bestseller => throw _privateConstructorUsedError;
  bool? get discount => throw _privateConstructorUsedError;
  bool? get promotion => throw _privateConstructorUsedError;
  bool? get stopList => throw _privateConstructorUsedError;
  String? get quantityInBox => throw _privateConstructorUsedError;
  dynamic get preOrder => throw _privateConstructorUsedError;
  List<String>? get barcode => throw _privateConstructorUsedError;
  String? get arrivalDate => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get inFav => throw _privateConstructorUsedError;
  bool? get inCart => throw _privateConstructorUsedError;
  bool? get inPreorder => throw _privateConstructorUsedError;
  bool? get hasComment => throw _privateConstructorUsedError;
  List<StocksDto>? get stocks => throw _privateConstructorUsedError;
  Contractor? get contractor => throw _privateConstructorUsedError;

  /// Serializes this ProductDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {int id,
      ProductDataDto? organization,
      ProductDataDto? category,
      ProductDataDto? brand,
      ProductDataDto? madeIn,
      String? classifierCode,
      String? classifierTitle,
      String? packagename,
      String? packagecode,
      String? title,
      String? vendorCode,
      String? nds,
      int? price,
      int? priceDiscount,
      String? measure,
      String? description,
      bool? actual,
      bool? bestseller,
      bool? discount,
      bool? promotion,
      bool? stopList,
      String? quantityInBox,
      dynamic preOrder,
      List<String>? barcode,
      String? arrivalDate,
      double? weight,
      String? size,
      String? imageUrl,
      bool? inFav,
      bool? inCart,
      bool? inPreorder,
      bool? hasComment,
      List<StocksDto>? stocks,
      Contractor? contractor});

  $ProductDataDtoCopyWith<$Res>? get organization;
  $ProductDataDtoCopyWith<$Res>? get category;
  $ProductDataDtoCopyWith<$Res>? get brand;
  $ProductDataDtoCopyWith<$Res>? get madeIn;
  $ContractorCopyWith<$Res>? get contractor;
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? madeIn = freezed,
    Object? classifierCode = freezed,
    Object? classifierTitle = freezed,
    Object? packagename = freezed,
    Object? packagecode = freezed,
    Object? title = freezed,
    Object? vendorCode = freezed,
    Object? nds = freezed,
    Object? price = freezed,
    Object? priceDiscount = freezed,
    Object? measure = freezed,
    Object? description = freezed,
    Object? actual = freezed,
    Object? bestseller = freezed,
    Object? discount = freezed,
    Object? promotion = freezed,
    Object? stopList = freezed,
    Object? quantityInBox = freezed,
    Object? preOrder = freezed,
    Object? barcode = freezed,
    Object? arrivalDate = freezed,
    Object? weight = freezed,
    Object? size = freezed,
    Object? imageUrl = freezed,
    Object? inFav = freezed,
    Object? inCart = freezed,
    Object? inPreorder = freezed,
    Object? hasComment = freezed,
    Object? stocks = freezed,
    Object? contractor = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      madeIn: freezed == madeIn
          ? _value.madeIn
          : madeIn // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      classifierCode: freezed == classifierCode
          ? _value.classifierCode
          : classifierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      classifierTitle: freezed == classifierTitle
          ? _value.classifierTitle
          : classifierTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      packagename: freezed == packagename
          ? _value.packagename
          : packagename // ignore: cast_nullable_to_non_nullable
              as String?,
      packagecode: freezed == packagecode
          ? _value.packagecode
          : packagecode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      nds: freezed == nds
          ? _value.nds
          : nds // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceDiscount: freezed == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      measure: freezed == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      actual: freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestseller: freezed == bestseller
          ? _value.bestseller
          : bestseller // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as bool?,
      stopList: freezed == stopList
          ? _value.stopList
          : stopList // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantityInBox: freezed == quantityInBox
          ? _value.quantityInBox
          : quantityInBox // ignore: cast_nullable_to_non_nullable
              as String?,
      preOrder: freezed == preOrder
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      arrivalDate: freezed == arrivalDate
          ? _value.arrivalDate
          : arrivalDate // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      inFav: freezed == inFav
          ? _value.inFav
          : inFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      inCart: freezed == inCart
          ? _value.inCart
          : inCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      inPreorder: freezed == inPreorder
          ? _value.inPreorder
          : inPreorder // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasComment: freezed == hasComment
          ? _value.hasComment
          : hasComment // ignore: cast_nullable_to_non_nullable
              as bool?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StocksDto>?,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as Contractor?,
    ) as $Val);
  }

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataDtoCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $ProductDataDtoCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataDtoCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProductDataDtoCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataDtoCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $ProductDataDtoCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataDtoCopyWith<$Res>? get madeIn {
    if (_value.madeIn == null) {
      return null;
    }

    return $ProductDataDtoCopyWith<$Res>(_value.madeIn!, (value) {
      return _then(_value.copyWith(madeIn: value) as $Val);
    });
  }

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractorCopyWith<$Res>? get contractor {
    if (_value.contractor == null) {
      return null;
    }

    return $ContractorCopyWith<$Res>(_value.contractor!, (value) {
      return _then(_value.copyWith(contractor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ProductDataDto? organization,
      ProductDataDto? category,
      ProductDataDto? brand,
      ProductDataDto? madeIn,
      String? classifierCode,
      String? classifierTitle,
      String? packagename,
      String? packagecode,
      String? title,
      String? vendorCode,
      String? nds,
      int? price,
      int? priceDiscount,
      String? measure,
      String? description,
      bool? actual,
      bool? bestseller,
      bool? discount,
      bool? promotion,
      bool? stopList,
      String? quantityInBox,
      dynamic preOrder,
      List<String>? barcode,
      String? arrivalDate,
      double? weight,
      String? size,
      String? imageUrl,
      bool? inFav,
      bool? inCart,
      bool? inPreorder,
      bool? hasComment,
      List<StocksDto>? stocks,
      Contractor? contractor});

  @override
  $ProductDataDtoCopyWith<$Res>? get organization;
  @override
  $ProductDataDtoCopyWith<$Res>? get category;
  @override
  $ProductDataDtoCopyWith<$Res>? get brand;
  @override
  $ProductDataDtoCopyWith<$Res>? get madeIn;
  @override
  $ContractorCopyWith<$Res>? get contractor;
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? organization = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? madeIn = freezed,
    Object? classifierCode = freezed,
    Object? classifierTitle = freezed,
    Object? packagename = freezed,
    Object? packagecode = freezed,
    Object? title = freezed,
    Object? vendorCode = freezed,
    Object? nds = freezed,
    Object? price = freezed,
    Object? priceDiscount = freezed,
    Object? measure = freezed,
    Object? description = freezed,
    Object? actual = freezed,
    Object? bestseller = freezed,
    Object? discount = freezed,
    Object? promotion = freezed,
    Object? stopList = freezed,
    Object? quantityInBox = freezed,
    Object? preOrder = freezed,
    Object? barcode = freezed,
    Object? arrivalDate = freezed,
    Object? weight = freezed,
    Object? size = freezed,
    Object? imageUrl = freezed,
    Object? inFav = freezed,
    Object? inCart = freezed,
    Object? inPreorder = freezed,
    Object? hasComment = freezed,
    Object? stocks = freezed,
    Object? contractor = freezed,
  }) {
    return _then(_$ProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      madeIn: freezed == madeIn
          ? _value.madeIn
          : madeIn // ignore: cast_nullable_to_non_nullable
              as ProductDataDto?,
      classifierCode: freezed == classifierCode
          ? _value.classifierCode
          : classifierCode // ignore: cast_nullable_to_non_nullable
              as String?,
      classifierTitle: freezed == classifierTitle
          ? _value.classifierTitle
          : classifierTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      packagename: freezed == packagename
          ? _value.packagename
          : packagename // ignore: cast_nullable_to_non_nullable
              as String?,
      packagecode: freezed == packagecode
          ? _value.packagecode
          : packagecode // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorCode: freezed == vendorCode
          ? _value.vendorCode
          : vendorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      nds: freezed == nds
          ? _value.nds
          : nds // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      priceDiscount: freezed == priceDiscount
          ? _value.priceDiscount
          : priceDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      measure: freezed == measure
          ? _value.measure
          : measure // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      actual: freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestseller: freezed == bestseller
          ? _value.bestseller
          : bestseller // ignore: cast_nullable_to_non_nullable
              as bool?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as bool?,
      stopList: freezed == stopList
          ? _value.stopList
          : stopList // ignore: cast_nullable_to_non_nullable
              as bool?,
      quantityInBox: freezed == quantityInBox
          ? _value.quantityInBox
          : quantityInBox // ignore: cast_nullable_to_non_nullable
              as String?,
      preOrder: freezed == preOrder
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      barcode: freezed == barcode
          ? _value._barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      arrivalDate: freezed == arrivalDate
          ? _value.arrivalDate
          : arrivalDate // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      inFav: freezed == inFav
          ? _value.inFav
          : inFav // ignore: cast_nullable_to_non_nullable
              as bool?,
      inCart: freezed == inCart
          ? _value.inCart
          : inCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      inPreorder: freezed == inPreorder
          ? _value.inPreorder
          : inPreorder // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasComment: freezed == hasComment
          ? _value.hasComment
          : hasComment // ignore: cast_nullable_to_non_nullable
              as bool?,
      stocks: freezed == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StocksDto>?,
      contractor: freezed == contractor
          ? _value.contractor
          : contractor // ignore: cast_nullable_to_non_nullable
              as Contractor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoImpl extends _ProductDto {
  _$ProductDtoImpl(
      {required this.id,
      this.organization,
      this.category,
      this.brand,
      this.madeIn,
      this.classifierCode,
      this.classifierTitle,
      this.packagename,
      this.packagecode,
      this.title,
      this.vendorCode,
      this.nds,
      this.price,
      this.priceDiscount,
      this.measure,
      this.description,
      this.actual,
      this.bestseller,
      this.discount,
      this.promotion,
      this.stopList,
      this.quantityInBox,
      this.preOrder,
      final List<String>? barcode,
      this.arrivalDate,
      this.weight,
      this.size,
      this.imageUrl,
      this.inFav,
      this.inCart,
      this.inPreorder,
      this.hasComment,
      final List<StocksDto>? stocks,
      this.contractor})
      : _barcode = barcode,
        _stocks = stocks,
        super._();

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

  @override
  final int id;
  @override
  final ProductDataDto? organization;
  @override
  final ProductDataDto? category;
  @override
  final ProductDataDto? brand;
  @override
  final ProductDataDto? madeIn;
  @override
  final String? classifierCode;
  @override
  final String? classifierTitle;
  @override
  final String? packagename;
  @override
  final String? packagecode;
  @override
  final String? title;
  @override
  final String? vendorCode;
  @override
  final String? nds;
  @override
  final int? price;
  @override
  final int? priceDiscount;
  @override
  final String? measure;
  @override
  final String? description;
  @override
  final bool? actual;
  @override
  final bool? bestseller;
  @override
  final bool? discount;
  @override
  final bool? promotion;
  @override
  final bool? stopList;
  @override
  final String? quantityInBox;
  @override
  final dynamic preOrder;
  final List<String>? _barcode;
  @override
  List<String>? get barcode {
    final value = _barcode;
    if (value == null) return null;
    if (_barcode is EqualUnmodifiableListView) return _barcode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? arrivalDate;
  @override
  final double? weight;
  @override
  final String? size;
  @override
  final String? imageUrl;
  @override
  final bool? inFav;
  @override
  final bool? inCart;
  @override
  final bool? inPreorder;
  @override
  final bool? hasComment;
  final List<StocksDto>? _stocks;
  @override
  List<StocksDto>? get stocks {
    final value = _stocks;
    if (value == null) return null;
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Contractor? contractor;

  @override
  String toString() {
    return 'ProductDto(id: $id, organization: $organization, category: $category, brand: $brand, madeIn: $madeIn, classifierCode: $classifierCode, classifierTitle: $classifierTitle, packagename: $packagename, packagecode: $packagecode, title: $title, vendorCode: $vendorCode, nds: $nds, price: $price, priceDiscount: $priceDiscount, measure: $measure, description: $description, actual: $actual, bestseller: $bestseller, discount: $discount, promotion: $promotion, stopList: $stopList, quantityInBox: $quantityInBox, preOrder: $preOrder, barcode: $barcode, arrivalDate: $arrivalDate, weight: $weight, size: $size, imageUrl: $imageUrl, inFav: $inFav, inCart: $inCart, inPreorder: $inPreorder, hasComment: $hasComment, stocks: $stocks, contractor: $contractor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.madeIn, madeIn) || other.madeIn == madeIn) &&
            (identical(other.classifierCode, classifierCode) ||
                other.classifierCode == classifierCode) &&
            (identical(other.classifierTitle, classifierTitle) ||
                other.classifierTitle == classifierTitle) &&
            (identical(other.packagename, packagename) ||
                other.packagename == packagename) &&
            (identical(other.packagecode, packagecode) ||
                other.packagecode == packagecode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.vendorCode, vendorCode) ||
                other.vendorCode == vendorCode) &&
            (identical(other.nds, nds) || other.nds == nds) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceDiscount, priceDiscount) ||
                other.priceDiscount == priceDiscount) &&
            (identical(other.measure, measure) || other.measure == measure) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.actual, actual) || other.actual == actual) &&
            (identical(other.bestseller, bestseller) ||
                other.bestseller == bestseller) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion) &&
            (identical(other.stopList, stopList) ||
                other.stopList == stopList) &&
            (identical(other.quantityInBox, quantityInBox) ||
                other.quantityInBox == quantityInBox) &&
            const DeepCollectionEquality().equals(other.preOrder, preOrder) &&
            const DeepCollectionEquality().equals(other._barcode, _barcode) &&
            (identical(other.arrivalDate, arrivalDate) ||
                other.arrivalDate == arrivalDate) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.inFav, inFav) || other.inFav == inFav) &&
            (identical(other.inCart, inCart) || other.inCart == inCart) &&
            (identical(other.inPreorder, inPreorder) ||
                other.inPreorder == inPreorder) &&
            (identical(other.hasComment, hasComment) ||
                other.hasComment == hasComment) &&
            const DeepCollectionEquality().equals(other._stocks, _stocks) &&
            (identical(other.contractor, contractor) ||
                other.contractor == contractor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        organization,
        category,
        brand,
        madeIn,
        classifierCode,
        classifierTitle,
        packagename,
        packagecode,
        title,
        vendorCode,
        nds,
        price,
        priceDiscount,
        measure,
        description,
        actual,
        bestseller,
        discount,
        promotion,
        stopList,
        quantityInBox,
        const DeepCollectionEquality().hash(preOrder),
        const DeepCollectionEquality().hash(_barcode),
        arrivalDate,
        weight,
        size,
        imageUrl,
        inFav,
        inCart,
        inPreorder,
        hasComment,
        const DeepCollectionEquality().hash(_stocks),
        contractor
      ]);

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto extends ProductDto {
  factory _ProductDto(
      {required final int id,
      final ProductDataDto? organization,
      final ProductDataDto? category,
      final ProductDataDto? brand,
      final ProductDataDto? madeIn,
      final String? classifierCode,
      final String? classifierTitle,
      final String? packagename,
      final String? packagecode,
      final String? title,
      final String? vendorCode,
      final String? nds,
      final int? price,
      final int? priceDiscount,
      final String? measure,
      final String? description,
      final bool? actual,
      final bool? bestseller,
      final bool? discount,
      final bool? promotion,
      final bool? stopList,
      final String? quantityInBox,
      final dynamic preOrder,
      final List<String>? barcode,
      final String? arrivalDate,
      final double? weight,
      final String? size,
      final String? imageUrl,
      final bool? inFav,
      final bool? inCart,
      final bool? inPreorder,
      final bool? hasComment,
      final List<StocksDto>? stocks,
      final Contractor? contractor}) = _$ProductDtoImpl;
  _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

  @override
  int get id;
  @override
  ProductDataDto? get organization;
  @override
  ProductDataDto? get category;
  @override
  ProductDataDto? get brand;
  @override
  ProductDataDto? get madeIn;
  @override
  String? get classifierCode;
  @override
  String? get classifierTitle;
  @override
  String? get packagename;
  @override
  String? get packagecode;
  @override
  String? get title;
  @override
  String? get vendorCode;
  @override
  String? get nds;
  @override
  int? get price;
  @override
  int? get priceDiscount;
  @override
  String? get measure;
  @override
  String? get description;
  @override
  bool? get actual;
  @override
  bool? get bestseller;
  @override
  bool? get discount;
  @override
  bool? get promotion;
  @override
  bool? get stopList;
  @override
  String? get quantityInBox;
  @override
  dynamic get preOrder;
  @override
  List<String>? get barcode;
  @override
  String? get arrivalDate;
  @override
  double? get weight;
  @override
  String? get size;
  @override
  String? get imageUrl;
  @override
  bool? get inFav;
  @override
  bool? get inCart;
  @override
  bool? get inPreorder;
  @override
  bool? get hasComment;
  @override
  List<StocksDto>? get stocks;
  @override
  Contractor? get contractor;

  /// Create a copy of ProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
