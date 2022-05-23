class StrapiDocument<T> {
  late T attributes;
  late int id;
  StrapiDocument({
    required this.id,
    required this.attributes,
  });

  factory StrapiDocument.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> json) converter,
  ) {
    return StrapiDocument<T>(
      id: json["id"],
      attributes: converter(
        json["attributes"],
      ),
    );
  }
}
