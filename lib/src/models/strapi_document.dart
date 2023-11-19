import 'package:freezed_annotation/freezed_annotation.dart';

part 'strapi_document.freezed.dart';
part 'strapi_document.g.dart';

@Freezed(genericArgumentFactories: true)
class StrapiDocument<Model> with _$StrapiDocument<Model> {
  const factory StrapiDocument({
    required int id,
    required Model attributes,
  }) = _StrapiDocument<Model>;

  factory StrapiDocument.fromJson(
    Map<String, dynamic> json,
    Model Function(Object? json) fromJsonModel,
  ) =>
      _$StrapiDocumentFromJson<Model>(json, fromJsonModel);
}
