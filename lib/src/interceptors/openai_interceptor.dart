import 'package:dio/dio.dart';

/// An interceptor for Dio to handle the authentication and headers for ChatGPT API requests.
///
/// This interceptor automatically adds the 'Authorization' and 'Content-Type' headers to each request.
class OpenAIInterceptor extends Interceptor {
  final String _apiKey;

  /// Constructs a [OpenAIInterceptor] instance.
  ///
  /// The [_apiKey] is required to authenticate with the ChatGPT API.
  OpenAIInterceptor(this._apiKey);

  /// Overrides the [onRequest] method of the [Interceptor] class.
  ///
  /// This method is called before the request is sent. It adds the 'Authorization' and 'Content-Type' headers to the [options].
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = 'Bearer $_apiKey';
    options.headers.addEntries(
      [
        MapEntry<String, String>('Authorization', token),
        const MapEntry<String, String>('Content-Type', 'application/json'),
      ],
    );
    super.onRequest(options, handler);
  }
}
