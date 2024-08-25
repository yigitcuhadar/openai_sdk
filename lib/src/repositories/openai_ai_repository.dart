import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../interceptors/openai_interceptor.dart';
import '../models/models.dart';
import 'ai_repository.dart';

const String openaiBaseUrl = 'https://api.openai.com/v1';
const String speechEndpoint = '/audio/speech';
const String transcriptionsEndpoint = '/audio/transcriptions';
const String translationsEndpoint = '/audio/translations';
const String completionsEndpoint = '/chat/completions';

/// Represents the main class for interacting with the ChatGPT API.
class OpenaiAIRepository implements AIRepository {
  final String _apiKey;
  final Duration? _connectTimeout;
  final Duration? _receiveTimeout;
  final Duration? _sendTimeout;

  /// Constructs a [OpenaiAIRepository] instance.
  ///
  /// [apiKey] is required to authenticate with the API.
  /// [connectTimeout], [sendTimeout], and [receiveTimeout] are optional and represent the respective timeouts for the API calls.
  OpenaiAIRepository({
    required String apiKey,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  })  : _apiKey = apiKey,
        _connectTimeout = connectTimeout,
        _receiveTimeout = receiveTimeout,
        _sendTimeout = sendTimeout;

  /// Returns a Dio instance with the base options set.
  Dio get _dio => Dio(BaseOptions(
        baseUrl: openaiBaseUrl,
        connectTimeout: _connectTimeout,
        receiveTimeout: _receiveTimeout,
        sendTimeout: _sendTimeout,
      ))
        ..interceptors.addAll([
          OpenAIInterceptor(_apiKey),
          PrettyDioLogger(
            requestBody: true,
            requestHeader: true,
            responseHeader: true,
          ),
        ]);

  @override
  Stream<Uint8List> createSpeech(SpeechRequest request) async* {
    final response = await _dio.post(
      speechEndpoint,
      data: request.toJson(),
      options: Options(responseType: ResponseType.stream),
    );
    final responseStream = response.data.stream;
    await for (var chunk in responseStream) {
      yield chunk as Uint8List;
    }
  }

  @override
  Future<TranscriptionResponse> createTranscription(TranscriptionRequest request) async {
    final response = await _dio.post(
      transcriptionsEndpoint,
      data: await request.toFormData,
    );
    return TranscriptionResponse.fromJson(response.data);
  }

  @override
  Future<TranslationResponse> createTranslation(TranslationRequest request) async {
    final response = await _dio.post(
      translationsEndpoint,
      data: await request.toFormData,
    );
    return TranslationResponse.fromJson(response.data);
  }

  @override
  Future createChatCompletion(CompletionRequest request) async {
    final response = await _dio.post(
      completionsEndpoint,
      data: request.toJson(),
    );
    return response.data;
  }
}
