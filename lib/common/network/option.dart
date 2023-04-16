import 'dart:convert';

class CommonResponse<T> {
  T? body;
  Map<String, dynamic>? headers;
  int? statusCode;
  String? statusMessage;

  CommonResponse({
    this.body,
    this.headers,
    this.statusCode,
    this.statusMessage
  });

  @override
  String toString() {
    // TODO: implement toString
    if (body is Map) {
      return json.encode(body);
    }
    return body.toString();
  }
}
