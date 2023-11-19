import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:strapi_sdk/src/models/strapi_metadata.dart';

part 'strapi_collection.freezed.dart';
part 'strapi_collection.g.dart';

@Freezed(genericArgumentFactories: true)
class StrapiCollection<Document> with _$StrapiCollection<Document> {
  const factory StrapiCollection({
    required Document data,
    required StrapiMetadata meta,
  }) = _StrapiCollection<Document>;

  factory StrapiCollection.fromJson(
    Map<String, dynamic> json,
    Document Function(Object? json) fromJsonModel,
  ) =>
      _$StrapiCollectionFromJson<Document>(json, fromJsonModel);
}
