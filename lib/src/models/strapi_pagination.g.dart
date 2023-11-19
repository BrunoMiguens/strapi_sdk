// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strapi_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrapiPaginationImpl _$$StrapiPaginationImplFromJson(
        Map<String, dynamic> json) =>
    _$StrapiPaginationImpl(
      page: json['page'] as int,
      pageSize: json['pageSize'] as int,
      pageCount: json['pageCount'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$StrapiPaginationImplToJson(
        _$StrapiPaginationImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
