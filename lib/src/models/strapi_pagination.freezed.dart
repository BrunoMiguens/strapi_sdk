// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strapi_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StrapiPagination _$StrapiPaginationFromJson(Map<String, dynamic> json) {
  return _StrapiPagination.fromJson(json);
}

/// @nodoc
mixin _$StrapiPagination {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StrapiPaginationCopyWith<StrapiPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrapiPaginationCopyWith<$Res> {
  factory $StrapiPaginationCopyWith(
          StrapiPagination value, $Res Function(StrapiPagination) then) =
      _$StrapiPaginationCopyWithImpl<$Res, StrapiPagination>;
  @useResult
  $Res call({int page, int pageSize, int pageCount, int total});
}

/// @nodoc
class _$StrapiPaginationCopyWithImpl<$Res, $Val extends StrapiPagination>
    implements $StrapiPaginationCopyWith<$Res> {
  _$StrapiPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? pageCount = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrapiPaginationImplCopyWith<$Res>
    implements $StrapiPaginationCopyWith<$Res> {
  factory _$$StrapiPaginationImplCopyWith(_$StrapiPaginationImpl value,
          $Res Function(_$StrapiPaginationImpl) then) =
      __$$StrapiPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pageSize, int pageCount, int total});
}

/// @nodoc
class __$$StrapiPaginationImplCopyWithImpl<$Res>
    extends _$StrapiPaginationCopyWithImpl<$Res, _$StrapiPaginationImpl>
    implements _$$StrapiPaginationImplCopyWith<$Res> {
  __$$StrapiPaginationImplCopyWithImpl(_$StrapiPaginationImpl _value,
      $Res Function(_$StrapiPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? pageCount = null,
    Object? total = null,
  }) {
    return _then(_$StrapiPaginationImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrapiPaginationImpl implements _StrapiPagination {
  const _$StrapiPaginationImpl(
      {required this.page,
      required this.pageSize,
      required this.pageCount,
      required this.total});

  factory _$StrapiPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrapiPaginationImplFromJson(json);

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int pageCount;
  @override
  final int total;

  @override
  String toString() {
    return 'StrapiPagination(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrapiPaginationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, pageSize, pageCount, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StrapiPaginationImplCopyWith<_$StrapiPaginationImpl> get copyWith =>
      __$$StrapiPaginationImplCopyWithImpl<_$StrapiPaginationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrapiPaginationImplToJson(
      this,
    );
  }
}

abstract class _StrapiPagination implements StrapiPagination {
  const factory _StrapiPagination(
      {required final int page,
      required final int pageSize,
      required final int pageCount,
      required final int total}) = _$StrapiPaginationImpl;

  factory _StrapiPagination.fromJson(Map<String, dynamic> json) =
      _$StrapiPaginationImpl.fromJson;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get pageCount;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$StrapiPaginationImplCopyWith<_$StrapiPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
