import 'package:strapi_sdk/src/models/strapi_pagination.dart';

class StrapiMetadata {
  late StrapiPagination pagination;
  StrapiMetadata({
    required this.pagination,
  });
  factory StrapiMetadata.fromJson(Map<String, dynamic> json) {
    return StrapiMetadata(
      pagination: StrapiPagination.fromJson(json["pagination"]),
    );
  }
}
