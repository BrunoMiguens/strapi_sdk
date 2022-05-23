import 'package:strapi_sdk/src/qs.dart';

///[$eq]	Equal
///[$ne]	Not equal
///[$lt]	Less than
///[$lte]	Less than or equal to
///[$gt]	Greater than
///[$gte]	Greater than or equal to
///[$in]	Included in an array
///[$notIn]	Not included in an array
///[$contains]	Contains (case-sensitive)
///[$notContains]	Does not contain (case-sensitive)
///[$containsi]	Contains
///[$notContainsi]	Does not contain
///[$null]	Is null
///[$notNull]	Is not null
///[$between]	Is between
///[$startsWith]	Starts with
///[$endsWith]	Ends with
///[$or]	Joins the filters in an "or" expression
///[$and]	Joins the filters in an "and" expression

extension Operation on Map {
  addOp(String field, String op, dynamic value) {
    if (this[field] == null) {
      this[field] = {};
    }
    this[field][op] = value;
  }
}

class StrapiQueryBuilder {
  Map<String, dynamic> _filters = {};
  List<String>? _fields;
  List<String>? _relations;
  List<String>? _sort;
  List<String>? _locales;
  int? _page;
  int? _pageSize;

  ///Where Equal
  void whereEq(
    String field,
    dynamic value,
  ) {
    _filters.addOp(field, "\$eq", value);
  }

  ///Where not equal
  void whereNotEq({
    required String field,
    required String value,
  }) {
    _filters.addOp(field, "\$ne", value);
  }

  void whereLessThan({
    required String field,
    required String value,
  }) {
    _filters.addOp(field, "\$lt", value);
  }

  void whereLessThanOrEqual({
    required String field,
    required String value,
  }) {
    _filters.addOp(field, "\$lte", value);
  }

  void whereGreaterThan({
    required String field,
    required String value,
  }) {
    _filters.addOp(field, "\$gt", value);
  }

  void whereGreaterThanOrEqual({
    required String field,
    required String value,
  }) {
    _filters.addOp(field, "\$gte", value);
  }

  ///	Included in an array
  void whereIn(
    String field,
    List<dynamic> values,
  ) {
    _filters.addOp(field, "\$in", values);
  }

  ///	Not included in an array
  void whereNotIn(
    String field,
    List<dynamic> values,
  ) {
    _filters.addOp(field, "\$notIn", values);
  }

  ///	Contains (case-sensitive)
  void whereContains(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$contains", value);
  }

  ///	Contains (non case-sensitive)
  void whereContainsI(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$containsi", value);
  }

  ///Does not Contains (case-sensitive)
  void whereNotContains(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$notContains", value);
  }

  ///Does not Contains (non case-sensitive)
  void whereNotContainsI(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$notContainsi", value);
  }

  void whereNull(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$null", value);
  }

  void whereNotNull(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$notNull", value);
  }

  void whereStartsWith(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$startsWith", value);
  }

  void whereEndsWith(
    String field,
    String value,
  ) {
    _filters.addOp(field, "\$endsWith", value);
  }

  ///Joins the filters in an "$or" expression
  ///
  /// {1} or {2}
  /// {
  ///   "4or":[
  ///     {1},
  ///     {2}
  ///   ]
  /// }
  StrapiQueryBuilder or(
    StrapiQueryBuilder builder,
  ) {
    _filters = {
      "\$or": [
        _filters,
        builder._filters,
      ]
    };
    return this;
  }

  ///Joins the filters in an "$and" expression
  ///
  /// {1} or {2}
  /// {
  ///   "$and":[
  ///     {1},
  ///     {2}
  ///   ]
  /// }
  StrapiQueryBuilder and(
    StrapiQueryBuilder builder,
  ) {
    _filters = {
      "\$and": [
        _filters,
        builder._filters,
      ]
    };
    return this;
  }

  void sortBy({
    required String field,
    String order = 'asc',
  }) {
    _sort ??= [];
    _sort!.add("$field:$order");
  }

  void select(List<String> fields) {
    assert(fields.isNotEmpty);
    _fields = fields;
  }

  void populate(List<String> relations) {
    assert(relations.isNotEmpty);
    _relations = relations;
  }

  void inLocales(List<String> locales) {
    assert(locales.isNotEmpty);
    _locales = locales;
  }

  void paginate({int page = 1, int pageSize = 10}) {
    _page = page;
    _pageSize = pageSize;
  }

  Map<String, dynamic> buildMap() {
    // String query = "";
    Map<String, dynamic> result = {};

    if (_filters.isNotEmpty) {
      result["filters"] = _filters;
    }

    if (_page != null) {
      if (result["pagination"] == null) {
        result["pagination"] = {};
      }
      result["pagination"]["page"] = _page;
    }
    if (_pageSize != null) {
      if (result["pagination"] == null) {
        result["pagination"] = {};
      }
      result["pagination"]["pageSize"] = _pageSize;
    }

    if (_relations != null) {
      result["populate"] = _relations;
    }
    if (_sort != null) {
      result["sort"] = _sort;
    }
    if (_fields != null) {
      result["fields"] = _fields;
    }
    if (_locales != null) {
      result["locale"] = _locales;
    }

    return result;
  }

  StrapiQueryBuilder();

  ///
  ///  Map<String, dynamic> json = {
  ///    "filters": {
  ///      "\$or": [
  ///        {
  ///          "date": {
  ///            "\$eq": '2020-01-01',
  ///          },
  ///        },
  ///        {
  ///          "date": {
  ///            "\$eq": '2020-01-02',
  ///          },
  ///        },
  ///      ],
  ///      "author": {
  ///        'name': {
  ///          "\$eq": 'Kai doe',
  ///        },
  ///      },
  ///    }
  ///  };
  factory StrapiQueryBuilder.fromJson(Map<String, dynamic> json) {
    StrapiQueryBuilder builder = StrapiQueryBuilder();

    if (json["filters"] != null) {
      builder._filters = json["filters"];
    }
    if (json["pagination"] != null) {
      builder._page = json["pagination"]["page"];
      builder._pageSize = json["pagination"]["pageSize"];
    }
    if (json["sort"] != null) {
      builder._sort = json["sort"];
    }
    if (json["fields"] != null) {
      builder._fields = json["fields"];
    }
    if (json["locale"] != null) {
      builder._locales = json["locale"];
    }

    return builder;
  }

  String buildQueryString([bool sanitize = false]) {
    return Qs.objectToQueryString(buildMap(), sanitize: sanitize);
  }
}
