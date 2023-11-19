// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strapi_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrapiCollectionImpl<Document> _$$StrapiCollectionImplFromJson<Document>(
  Map<String, dynamic> json,
  Document Function(Object? json) fromJsonDocument,
) =>
    _$StrapiCollectionImpl<Document>(
      data: fromJsonDocument(json['data']),
      meta: StrapiMetadata.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StrapiCollectionImplToJson<Document>(
  _$StrapiCollectionImpl<Document> instance,
  Object? Function(Document value) toJsonDocument,
) =>
    <String, dynamic>{
      'data': toJsonDocument(instance.data),
      'meta': instance.meta,
    };
