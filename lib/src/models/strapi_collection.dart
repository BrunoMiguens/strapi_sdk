import 'package:strapi_sdk/src/models/strapi_document.dart';
import 'package:strapi_sdk/src/models/strapi_metadata.dart';

class StrapiCollection<T> {
  late List<StrapiDocument> data;
  late StrapiMetadata meta;
  //static late Function(Map<String,dynamic> json) converter;

  StrapiCollection({
    required this.data,
    required this.meta,
  });

  factory StrapiCollection.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> json) converter,
  ) {
    return StrapiCollection(
      data: List.from(
        json["data"].map(
          (item) => StrapiDocument.fromJson(item, converter),
        ),
      ),
      meta: StrapiMetadata.fromJson(
        json["meta"],
      ),
    );
  }
}
