// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strapi_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StrapiMetadata _$StrapiMetadataFromJson(Map<String, dynamic> json) {
  return _StrapiMetadata.fromJson(json);
}

/// @nodoc
mixin _$StrapiMetadata {
  StrapiPagination get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrapiMetadataCopyWith<StrapiMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrapiMetadataCopyWith<$Res> {
  factory $StrapiMetadataCopyWith(
          StrapiMetadata value, $Res Function(StrapiMetadata) then) =
      _$StrapiMetadataCopyWithImpl<$Res, StrapiMetadata>;
  @useResult
  $Res call({StrapiPagination pagination});

  $StrapiPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$StrapiMetadataCopyWithImpl<$Res, $Val extends StrapiMetadata>
    implements $StrapiMetadataCopyWith<$Res> {
  _$StrapiMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as StrapiPagination,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StrapiPaginationCopyWith<$Res> get pagination {
    return $StrapiPaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StrapiMetadataImplCopyWith<$Res>
    implements $StrapiMetadataCopyWith<$Res> {
  factory _$$StrapiMetadataImplCopyWith(_$StrapiMetadataImpl value,
          $Res Function(_$StrapiMetadataImpl) then) =
      __$$StrapiMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StrapiPagination pagination});

  @override
  $StrapiPaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$StrapiMetadataImplCopyWithImpl<$Res>
    extends _$StrapiMetadataCopyWithImpl<$Res, _$StrapiMetadataImpl>
    implements _$$StrapiMetadataImplCopyWith<$Res> {
  __$$StrapiMetadataImplCopyWithImpl(
      _$StrapiMetadataImpl _value, $Res Function(_$StrapiMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagination = null,
  }) {
    return _then(_$StrapiMetadataImpl(
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as StrapiPagination,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrapiMetadataImpl implements _StrapiMetadata {
  const _$StrapiMetadataImpl({required this.pagination});

  factory _$StrapiMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrapiMetadataImplFromJson(json);

  @override
  final StrapiPagination pagination;

  @override
  String toString() {
    return 'StrapiMetadata(pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrapiMetadataImpl &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrapiMetadataImplCopyWith<_$StrapiMetadataImpl> get copyWith =>
      __$$StrapiMetadataImplCopyWithImpl<_$StrapiMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrapiMetadataImplToJson(
      this,
    );
  }
}

abstract class _StrapiMetadata implements StrapiMetadata {
  const factory _StrapiMetadata({required final StrapiPagination pagination}) =
      _$StrapiMetadataImpl;

  factory _StrapiMetadata.fromJson(Map<String, dynamic> json) =
      _$StrapiMetadataImpl.fromJson;

  @override
  StrapiPagination get pagination;
  @override
  @JsonKey(ignore: true)
  _$$StrapiMetadataImplCopyWith<_$StrapiMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
