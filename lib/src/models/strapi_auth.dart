import 'package:freezed_annotation/freezed_annotation.dart';

part 'strapi_auth.freezed.dart';
part 'strapi_auth.g.dart';

@Freezed(genericArgumentFactories: true)
class StrapiAuth<User> with _$StrapiAuth<User> {
  const factory StrapiAuth({
    required String jwt,
    required User user,
  }) = _StrapiAuth<User>;

  factory StrapiAuth.fromJson(
    Map<String, dynamic> json,
    User Function(Object? json) fromJsonModel,
  ) =>
      _$StrapiAuthFromJson<User>(json, fromJsonModel);
}
