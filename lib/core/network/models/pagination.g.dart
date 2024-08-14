// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseImpl _$$PaginationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationResponseImpl(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: json['results'] as List<dynamic>,
    );

Map<String, dynamic> _$$PaginationResponseImplToJson(
        _$PaginationResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
