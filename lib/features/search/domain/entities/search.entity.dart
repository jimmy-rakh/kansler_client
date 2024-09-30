class SearchEntity {
  final String? title;
  final int? organizationId;
  final List<int> brands;
  final List<int> categories;
  final int? priceFrom;
  final int? priceTo;
  final String orderBy;
  final int pageNumber;

  SearchEntity({
    required this.title,
    this.organizationId,
    this.brands = const [],
    this.categories = const [17],
    this.priceFrom,
    this.priceTo,
    this.orderBy = 'created_at',
    this.pageNumber = 1,
  });

  SearchEntity copyWith({
    String? title,
    int? organizationId,
    List<int>? brands,
    List<int>? categories,
    int? priceFrom,
    int? priceTo,
    String? orderBy,
    int? pageNumber,
  }) =>
      SearchEntity(
        title: title ?? this.title,
        organizationId: organizationId ?? this.organizationId,
        brands: brands ?? this.brands,
        categories: categories ?? this.categories,
        priceFrom: priceFrom ?? this.priceFrom,
        priceTo: priceTo ?? this.priceTo,
        orderBy: orderBy ?? this.orderBy,
        pageNumber: pageNumber ?? this.pageNumber,
      );
}
