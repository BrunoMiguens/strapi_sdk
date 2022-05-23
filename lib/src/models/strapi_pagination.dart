class StrapiPagination {
  late int page;
  late int pageSize;
  late int pageCount;
  late int total;
  StrapiPagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory StrapiPagination.fromJson(Map<String, dynamic> json) {
    return StrapiPagination(
      page: json['page'],
      pageSize: json['pageSize'],
      pageCount: json['pageCount'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "page": page,
      "pageSize": pageSize,
      "pageCount": pageCount,
      "total": total,
    };
  }
}
