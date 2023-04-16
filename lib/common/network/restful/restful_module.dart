import 'package:tutorial_app/common/network/response.dart';

import '../option.dart';

abstract class RestfulModule {
  Future<String?> get authToken;
  Future<void> saveAuthToken(String authToken);
  Future<void> removeAuthToken();

  Future<CommonResponse<T>> get<T>(
    String uri, {
    Map<String, dynamic>? query,
    CommonRequestOptions? options,
  });

  Future<CommonResponse<T>> post<T>(String uri, data,
      {Map<String, dynamic>? query, CommonRequestOptions? options});

  Future<CommonResponse<T>> delete<T>(String uri,
      {data, Map<String, dynamic>? query, CommonRequestOptions? options});

  Future<CommonResponse<T>> patch<T>(String error, data,
      {Map<String, dynamic>? query, CommonRequestOptions? options});
}
