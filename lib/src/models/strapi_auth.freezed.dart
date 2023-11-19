// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strapi_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StrapiAuth<User> _$StrapiAuthFromJson<User>(
    Map<String, dynamic> json, User Function(Object?) fromJsonUser) {
  return _StrapiAuth<User>.fromJson(json, fromJsonUser);
}

/// @nodoc
mixin _$StrapiAuth<User> {
  String get jwt => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(User) toJsonUser) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrapiAuthCopyWith<User, StrapiAuth<User>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrapiAuthCopyWith<User, $Res> {
  factory $StrapiAuthCopyWith(
          StrapiAuth<User> value, $Res Function(StrapiAuth<User>) then) =
      _$StrapiAuthCopyWithImpl<User, $Res, StrapiAuth<User>>;
  @useResult
  $Res call({String jwt, User user});
}

/// @nodoc
class _$StrapiAuthCopyWithImpl<User, $Res, $Val extends StrapiAuth<User>>
    implements $StrapiAuthCopyWith<User, $Res> {
  _$StrapiAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrapiAuthImplCopyWith<User, $Res>
    implements $StrapiAuthCopyWith<User, $Res> {
  factory _$$StrapiAuthImplCopyWith(_$StrapiAuthImpl<User> value,
          $Res Function(_$StrapiAuthImpl<User>) then) =
      __$$StrapiAuthImplCopyWithImpl<User, $Res>;
  @override
  @useResult
  $Res call({String jwt, User user});
}

/// @nodoc
class __$$StrapiAuthImplCopyWithImpl<User, $Res>
    extends _$StrapiAuthCopyWithImpl<User, $Res, _$StrapiAuthImpl<User>>
    implements _$$StrapiAuthImplCopyWith<User, $Res> {
  __$$StrapiAuthImplCopyWithImpl(_$StrapiAuthImpl<User> _value,
      $Res Function(_$StrapiAuthImpl<User>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? user = freezed,
  }) {
    return _then(_$StrapiAuthImpl<User>(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$StrapiAuthImpl<User> implements _StrapiAuth<User> {
  const _$StrapiAuthImpl({required this.jwt, required this.user});

  factory _$StrapiAuthImpl.fromJson(
          Map<String, dynamic> json, User Function(Object?) fromJsonUser) =>
      _$$StrapiAuthImplFromJson(json, fromJsonUser);

  @override
  final String jwt;
  @override
  final User user;

  @override
  String toString() {
    return 'StrapiAuth<$User>(jwt: $jwt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrapiAuthImpl<User> &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, jwt, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrapiAuthImplCopyWith<User, _$StrapiAuthImpl<User>> get copyWith =>
      __$$StrapiAuthImplCopyWithImpl<User, _$StrapiAuthImpl<User>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(User) toJsonUser) {
    return _$$StrapiAuthImplToJson<User>(this, toJsonUser);
  }
}

abstract class _StrapiAuth<User> implements StrapiAuth<User> {
  const factory _StrapiAuth(
      {required final String jwt,
      required final User user}) = _$StrapiAuthImpl<User>;

  factory _StrapiAuth.fromJson(
          Map<String, dynamic> json, User Function(Object?) fromJsonUser) =
      _$StrapiAuthImpl<User>.fromJson;

  @override
  String get jwt;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$StrapiAuthImplCopyWith<User, _$StrapiAuthImpl<User>> get copyWith =>
      throw _privateConstructorUsedError;
}
