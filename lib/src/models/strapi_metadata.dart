import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:strapi_sdk/src/models/strapi_pagination.dart';

part 'strapi_metadata.freezed.dart';
part 'strapi_metadata.g.dart';

@freezed
class StrapiMetadata with _$StrapiMetadata {
  const factory StrapiMetadata({
    required StrapiPagination pagination,
  }) = _StrapiMetadata;

  factory StrapiMetadata.fromJson(Map<String, Object?> json) =>
      _$StrapiMetadataFromJson(json);
}
