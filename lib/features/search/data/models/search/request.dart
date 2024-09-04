import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/search.entity.dart';

part 'request.freezed.dart';
part 'request.g.dart';

@Freezed(fromJson: false, toJson: true)
class SearchRequest with _$SearchRequest {
  SearchRequest._();

  factory SearchRequest({
    String? title,
    int? organizationId,
    @Default([]) List<int> brands,
    @Default([]) List<int> categories,
    int? priceFrom,
    int? priceTo,
    required String orderBy,
  }) = _SearchRequest;

  factory SearchRequest.fromEntity(SearchEntity entity) {
    return SearchRequest(
      title: entity.title,
      organizationId: entity.organizationId == 0 ? null : entity.organizationId,
      brands: entity.brands,
      categories: entity.categories,
      priceFrom: entity.priceFrom,
      priceTo: entity.priceTo,
      orderBy: entity.orderBy,
    );
  }
}
