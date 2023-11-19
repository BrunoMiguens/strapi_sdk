// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strapi_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StrapiDocument<Model> _$StrapiDocumentFromJson<Model>(
    Map<String, dynamic> json, Model Function(Object?) fromJsonModel) {
  return _StrapiDocument<Model>.fromJson(json, fromJsonModel);
}

/// @nodoc
mixin _$StrapiDocument<Model> {
  int get id => throw _privateConstructorUsedError;
  Model get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(Model) toJsonModel) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrapiDocumentCopyWith<Model, StrapiDocument<Model>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrapiDocumentCopyWith<Model, $Res> {
  factory $StrapiDocumentCopyWith(StrapiDocument<Model> value,
          $Res Function(StrapiDocument<Model>) then) =
      _$StrapiDocumentCopyWithImpl<Model, $Res, StrapiDocument<Model>>;
  @useResult
  $Res call({int id, Model attributes});
}

/// @nodoc
class _$StrapiDocumentCopyWithImpl<Model, $Res,
        $Val extends StrapiDocument<Model>>
    implements $StrapiDocumentCopyWith<Model, $Res> {
  _$StrapiDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Model,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrapiDocumentImplCopyWith<Model, $Res>
    implements $StrapiDocumentCopyWith<Model, $Res> {
  factory _$$StrapiDocumentImplCopyWith(_$StrapiDocumentImpl<Model> value,
          $Res Function(_$StrapiDocumentImpl<Model>) then) =
      __$$StrapiDocumentImplCopyWithImpl<Model, $Res>;
  @override
  @useResult
  $Res call({int id, Model attributes});
}

/// @nodoc
class __$$StrapiDocumentImplCopyWithImpl<Model, $Res>
    extends _$StrapiDocumentCopyWithImpl<Model, $Res,
        _$StrapiDocumentImpl<Model>>
    implements _$$StrapiDocumentImplCopyWith<Model, $Res> {
  __$$StrapiDocumentImplCopyWithImpl(_$StrapiDocumentImpl<Model> _value,
      $Res Function(_$StrapiDocumentImpl<Model>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = freezed,
  }) {
    return _then(_$StrapiDocumentImpl<Model>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Model,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$StrapiDocumentImpl<Model> implements _StrapiDocument<Model> {
  const _$StrapiDocumentImpl({required this.id, required this.attributes});

  factory _$StrapiDocumentImpl.fromJson(
          Map<String, dynamic> json, Model Function(Object?) fromJsonModel) =>
      _$$StrapiDocumentImplFromJson(json, fromJsonModel);

  @override
  final int id;
  @override
  final Model attributes;

  @override
  String toString() {
    return 'StrapiDocument<$Model>(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrapiDocumentImpl<Model> &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrapiDocumentImplCopyWith<Model, _$StrapiDocumentImpl<Model>>
      get copyWith => __$$StrapiDocumentImplCopyWithImpl<Model,
          _$StrapiDocumentImpl<Model>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(Model) toJsonModel) {
    return _$$StrapiDocumentImplToJson<Model>(this, toJsonModel);
  }
}

abstract class _StrapiDocument<Model> implements StrapiDocument<Model> {
  const factory _StrapiDocument(
      {required final int id,
      required final Model attributes}) = _$StrapiDocumentImpl<Model>;

  factory _StrapiDocument.fromJson(
          Map<String, dynamic> json, Model Function(Object?) fromJsonModel) =
      _$StrapiDocumentImpl<Model>.fromJson;

  @override
  int get id;
  @override
  Model get attributes;
  @override
  @JsonKey(ignore: true)
  _$$StrapiDocumentImplCopyWith<Model, _$StrapiDocumentImpl<Model>>
      get copyWith => throw _privateConstructorUsedError;
}
