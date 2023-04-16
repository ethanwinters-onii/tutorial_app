class CommonRequestOptions {
  Map<String, String>? headers;
  String? contentType;

  CommonRequestOptions({this.headers, this.contentType = "application/json"});
}
