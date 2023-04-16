import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tutorial_app/common/network/response.dart';
import 'package:tutorial_app/common/network/option.dart';
import 'package:tutorial_app/common/network/restful/restful_module.dart';
import 'package:tutorial_app/common/storage/local_storage_service.dart';

import '../../../providers/logger_provider.dart';

class RestfulModuleImpl implements RestfulModule {
  final dio = Dio();

  final LocalStorageService localStorageService = LocalStorageService();

  Future<Map<String, String>> _getHeaders(Map<String, String>? headers) async {
    var finalHeaders = <String, String>{};

    if (headers != null) finalHeaders = headers;

    if (!finalHeaders.containsKey("Authorization")) {
      var token = await authToken;
      if (token != null) {
        // if (kDebugMode) logger.fine('Token: $token');
        finalHeaders['Authorization'] = 'Bearer $token';
      }
    }

    return finalHeaders;
  }

  @override
  Future<CommonResponse<T>> delete<T>(String uri,
      {data, Map<String, dynamic>? query, CommonRequestOptions? options}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<CommonResponse<T>> get<T>(String uri,
      {Map<String, dynamic>? query, CommonRequestOptions? options}) async {
    var result = await dio.get(uri,
        queryParameters: query,
        options: Options(
            headers: await _getHeaders(options?.headers),
            contentType: options?.contentType));
    _logger(result, query: query);
    return CommonResponse(
        body: result.data,
        statusCode: result.statusCode,
        statusMessage: result.statusMessage);
  }

  @override
  Future<CommonResponse<T>> patch<T>(String error, data,
      {Map<String, dynamic>? query, CommonRequestOptions? options}) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<CommonResponse<T>> post<T>(String uri, data,
      {Map<String, dynamic>? query, CommonRequestOptions? options}) async {
    var result = await dio.post(uri,
        data: data,
        queryParameters: query,
        options: Options(
            headers: await _getHeaders(options?.headers),
            contentType: options?.contentType));
    _logger(result, query: data);
    return CommonResponse(
        body: result.data,
        statusCode: result.statusCode,
        statusMessage: result.statusMessage);
  }

  void _logger(Response result, {dynamic query}) {
    if (kDebugMode) {
      logger.info('Path: ${result.requestOptions.uri}');
      logger.info('Request query/body: $query');
      logger.info('Status code:${result.statusCode}');
      logger.severe('Response Body: ${result.data}');
    }
  }

  @override
  Future<void> removeAuthToken() async {
    await localStorageService.deleteAuthToken();
  }

  @override
  Future<void> saveAuthToken(String authToken) async {
    await localStorageService.saveAuthToken(authToken);
  }

  @override
  Future<String?> get authToken async => await localStorageService.authToken;
}
