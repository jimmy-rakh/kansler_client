import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class PaginationResponse with _$PaginationResponse {
  factory PaginationResponse({
    required int count,
    String? next,
    String? previous,
    required List results,
  }) = _PaginationResponse;

  factory PaginationResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseFromJson(json);
}
