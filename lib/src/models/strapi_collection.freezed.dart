// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strapi_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StrapiCollection<Document> _$StrapiCollectionFromJson<Document>(
    Map<String, dynamic> json, Document Function(Object?) fromJsonDocument) {
  return _StrapiCollection<Document>.fromJson(json, fromJsonDocument);
}

/// @nodoc
mixin _$StrapiCollection<Document> {
  Document get data => throw _privateConstructorUsedError;
  StrapiMetadata get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(Document) toJsonDocument) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrapiCollectionCopyWith<Document, StrapiCollection<Document>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrapiCollectionCopyWith<Document, $Res> {
  factory $StrapiCollectionCopyWith(StrapiCollection<Document> value,
          $Res Function(StrapiCollection<Document>) then) =
      _$StrapiCollectionCopyWithImpl<Document, $Res,
          StrapiCollection<Document>>;
  @useResult
  $Res call({Document data, StrapiMetadata meta});

  $StrapiMetadataCopyWith<$Res> get meta;
}

/// @nodoc
class _$StrapiCollectionCopyWithImpl<Document, $Res,
        $Val extends StrapiCollection<Document>>
    implements $StrapiCollectionCopyWith<Document, $Res> {
  _$StrapiCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Document,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as StrapiMetadata,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StrapiMetadataCopyWith<$Res> get meta {
    return $StrapiMetadataCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrapiCollectionImplCopyWith<Document, $Res>
    implements $StrapiCollectionCopyWith<Document, $Res> {
  factory _$$StrapiCollectionImplCopyWith(
          _$StrapiCollectionImpl<Document> value,
          $Res Function(_$StrapiCollectionImpl<Document>) then) =
      __$$StrapiCollectionImplCopyWithImpl<Document, $Res>;
  @override
  @useResult
  $Res call({Document data, StrapiMetadata meta});

  @override
  $StrapiMetadataCopyWith<$Res> get meta;
}

/// @nodoc
class __$$StrapiCollectionImplCopyWithImpl<Document, $Res>
    extends _$StrapiCollectionCopyWithImpl<Document, $Res,
        _$StrapiCollectionImpl<Document>>
    implements _$$StrapiCollectionImplCopyWith<Document, $Res> {
  __$$StrapiCollectionImplCopyWithImpl(_$StrapiCollectionImpl<Document> _value,
      $Res Function(_$StrapiCollectionImpl<Document>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = null,
  }) {
    return _then(_$StrapiCollectionImpl<Document>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Document,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as StrapiMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$StrapiCollectionImpl<Document> implements _StrapiCollection<Document> {
  const _$StrapiCollectionImpl({required this.data, required this.meta});

  factory _$StrapiCollectionImpl.fromJson(Map<String, dynamic> json,
          Document Function(Object?) fromJsonDocument) =>
      _$$StrapiCollectionImplFromJson(json, fromJsonDocument);

  @override
  final Document data;
  @override
  final StrapiMetadata meta;

  @override
  String toString() {
    return 'StrapiCollection<$Document>(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrapiCollectionImpl<Document> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrapiCollectionImplCopyWith<Document, _$StrapiCollectionImpl<Document>>
      get copyWith => __$$StrapiCollectionImplCopyWithImpl<Document,
          _$StrapiCollectionImpl<Document>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(Document) toJsonDocument) {
    return _$$StrapiCollectionImplToJson<Document>(this, toJsonDocument);
  }
}

abstract class _StrapiCollection<Document>
    implements StrapiCollection<Document> {
  const factory _StrapiCollection(
      {required final Document data,
      required final StrapiMetadata meta}) = _$StrapiCollectionImpl<Document>;

  factory _StrapiCollection.fromJson(Map<String, dynamic> json,
          Document Function(Object?) fromJsonDocument) =
      _$StrapiCollectionImpl<Document>.fromJson;

  @override
  Document get data;
  @override
  StrapiMetadata get meta;
  @override
  @JsonKey(ignore: true)
  _$$StrapiCollectionImplCopyWith<Document, _$StrapiCollectionImpl<Document>>
      get copyWith => throw _privateConstructorUsedError;
}
