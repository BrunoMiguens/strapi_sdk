// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strapi_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StrapiAuthImpl<User> _$$StrapiAuthImplFromJson<User>(
  Map<String, dynamic> json,
  User Function(Object? json) fromJsonUser,
) =>
    _$StrapiAuthImpl<User>(
      jwt: json['jwt'] as String,
      user: fromJsonUser(json['user']),
    );

Map<String, dynamic> _$$StrapiAuthImplToJson<User>(
  _$StrapiAuthImpl<User> instance,
  Object? Function(User value) toJsonUser,
) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': toJsonUser(instance.user),
    };
