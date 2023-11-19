library strapi_sdk;

import 'package:dio/dio.dart';
import 'package:strapi_sdk/src/models/strapi_auth.dart';
import 'src/models/strapi_collection.dart';
import 'src/models/strapi_document.dart';
import 'src/strapi_query_builder.dart';

export 'src/strapi_query_builder.dart';
export 'src/models/strapi_collection.dart';
export 'src/models/strapi_document.dart';
export 'src/models/strapi_auth.dart';

/// A flutter SDK for a Strapi Backend
class StrapiSdk {
  late Dio _client;
  Dio get client => _client;

  static StrapiSdk? _instance;
  static StrapiSdk get instance {
    if (_instance == null) {
      throw Exception("StrapiSdk has not been initialized");
    }
    return _instance!;
  }

  ///Initialize strapi sdk with [endpoint] and the [token]
  static StrapiSdk init({
    required endpoint,
    required token,
  }) =>
      _instance ??= StrapiSdk._init(
        endpoint: endpoint,
        token: token,
      );

  StrapiSdk._init({
    required endpoint,
    required token,
  }) {
    _client = Dio(
      BaseOptions(
        baseUrl: "$endpoint/api",
        headers: {
          "Authorization": "Bearer $token",
        },
      ),
    );
  }
  factory StrapiSdk() => instance;

  /// Make a search with the server
  ///
  ///   StrapiQueryBuilder sBuilder = StrapiQueryBuilder();
  ///
  ///    sBuilder
  ///
  ///    ..whereContains("title", "lou")
  ///
  ///    ..whereEq("surname", "loic")
  ///
  ///    ..populate(["city"]);
  ///
  ///  var resp = await StrapiSdk.instance.find<Item>(
  ///  "items",
  /// params: sBuilder,
  /// converter: Item.fromJson
  /// );
  ///
  ///
  Future<StrapiCollection<T>> find<T>(
    String entryName, {
    StrapiQueryBuilder? params,
    required T Function(Object? json) converter,
  }) async {
    Response resp =
        await _client.get("/$entryName?${params?.buildQueryString()}");
    return StrapiCollection.fromJson(resp.data, converter);
  }

  Future<StrapiDocument<T>> findOne<T>(
    String entryName,
    int documentId, {
    required T Function(Object? json) converter,
  }) async {
    Response resp = await _client.get("/$entryName/$documentId");
    return StrapiDocument.fromJson(resp.data['data'], converter);
  }

  Future<StrapiDocument<T>> create<T>(
    String entryName,
    Map<String, dynamic> data, {
    required T Function(Object? json) converter,
  }) async {
    Response resp = await _client.post(
      "/$entryName",
      data: data,
    );
    return StrapiDocument.fromJson(resp.data['data'], converter);
  }

  Future<StrapiDocument<T>> update<T>(
    String entryName,
    int documentId,
    Map<String, dynamic> data, {
    required T Function(Object? json) converter,
  }) async {
    Response resp = await _client.put(
      "/$entryName/$documentId",
      data: data,
    );
    return StrapiDocument.fromJson(resp.data['data'], converter);
  }

  Future<StrapiDocument<T>> delete<T>(
    String entryName,
    int documentId, {
    required T Function(Object? json) converter,
  }) async {
    Response resp = await _client.delete("/$entryName/$documentId");
    return StrapiDocument.fromJson(resp.data['data'], converter);
  }

  Future<StrapiAuth<T>> login<T>({
    required String identifier,
    required String password,
    required T Function(Object? json) converter,
  }) async {
    Response resp = await _client.post(
      "/auth/local",
      data: {'identifier': identifier, 'password': password},
    );
    return StrapiAuth.fromJson(resp.data, converter);
  }
}
