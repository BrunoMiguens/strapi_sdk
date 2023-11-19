// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strapi_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrapiDocumentImpl<Model> _$$StrapiDocumentImplFromJson<Model>(
  Map<String, dynamic> json,
  Model Function(Object? json) fromJsonModel,
) =>
    _$StrapiDocumentImpl<Model>(
      id: json['id'] as int,
      attributes: fromJsonModel(json['attributes']),
    );

Map<String, dynamic> _$$StrapiDocumentImplToJson<Model>(
  _$StrapiDocumentImpl<Model> instance,
  Object? Function(Model value) toJsonModel,
) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': toJsonModel(instance.attributes),
    };
