import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../common/openai_model.dart';
import 'translation_response_format.dart';

part 'translation_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranslationRequest {
  /// The audio file object (not file name) translate, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.
  @JsonKey(includeToJson: false)
  final String filePath;

  /// ID of the model to use. Only whisper-1 (which is powered by our open source Whisper V2 model) is currently available.
  final OpenAIModel model;

  /// An optional text to guide the model's style or continue a previous audio segment. The https://platform.openai.com/docs/guides/speech-to-text/prompting prompt should be in English.
  final String? prompt;

  /// The format of the transcript output, in one of these options: json, text, srt, verbose_json, or vtt.
  /// Defaults to json
  final TranslationResponseFormat? responseFormat;

  /// The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
  /// If set to 0, the model will use https://en.wikipedia.org/wiki/Log_probability log probability to automatically increase the temperature until certain thresholds are hit.
  /// Defaults to 0
  final double? temperature;

  const TranslationRequest({
    required this.filePath,
    required this.model,
    this.prompt,
    this.responseFormat,
    this.temperature,
  }) : assert(!(model != OpenAIModel.whisper1 || (temperature != null && (temperature < 0 || temperature > 1.0))));

  factory TranslationRequest.fromJson(Map<String, dynamic> data) => _$TranslationRequestFromJson(data);

  Map<String, dynamic> toJson() => _$TranslationRequestToJson(this);

  Future<FormData> get toFormData async {
    return FormData.fromMap(
      {
        'file': await MultipartFile.fromFile(filePath),
      },
      ListFormat.multiCompatible,
    );
  }
}