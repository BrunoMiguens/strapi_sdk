import 'package:freezed_annotation/freezed_annotation.dart';

part 'strapi_pagination.freezed.dart';
part 'strapi_pagination.g.dart';

@freezed
class StrapiPagination with _$StrapiPagination {
  const factory StrapiPagination({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _StrapiPagination;

  factory StrapiPagination.fromJson(Map<String, Object?> json) =>
      _$StrapiPaginationFromJson(json);
}
