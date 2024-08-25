import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../common/openai_model.dart';
import 'transcription_response_format.dart';
import 'transcription_timestamp_granularity.dart';

part 'transcription_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranscriptionRequest {
  /// The audio file object (not file name) to transcribe, in one of these formats: flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm.
  @JsonKey(includeToJson: false)
  final String filePath;

  /// ID of the model to use. Only whisper-1 (which is powered by our open source Whisper V2 model) is currently available.
  final OpenAIModel model;

  /// The language of the input audio. Supplying the input language in https://en.wikipedia.org/wiki/List_of_ISO_639_language_codes ISO-639-1 format will improve accuracy and latency.
  final String? language;

  /// An optional text to guide the model's style or continue a previous audio segment. The https://platform.openai.com/docs/guides/speech-to-text/prompting prompt should match the audio language.
  final String? prompt;

  /// The format of the transcript output, in one of these options: json, text, srt, verbose_json, or vtt.
  /// Defaults to json
  final TranscriptionResponseFormat? responseFormat;

  /// The sampling temperature, between 0 and 1. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
  /// If set to 0, the model will use https://en.wikipedia.org/wiki/Log_probability log probability to automatically increase the temperature until certain thresholds are hit.
  /// Defaults to 0
  final double? temperature;

  /// The timestamp granularities to populate for this transcription. response_format must be set verbose_json to use timestamp granularities.
  /// Either or both of these options are supported: word, or segment. Note: There is no additional latency for segment timestamps, but generating word timestamps incurs additional latency.
  /// Defaults to segment
  final List<TranscriptionTimestampGranularity>? timestampGranularities;

  const TranscriptionRequest({
    required this.filePath,
    required this.model,
    this.language,
    this.prompt,
    this.responseFormat,
    this.temperature,
    this.timestampGranularities,
  }) : assert(!(model != OpenAIModel.whisper1 ||
            (temperature != null && (temperature < 0 || temperature > 1.0)) ||
            (timestampGranularities != null && responseFormat != TranscriptionResponseFormat.verboseJson)));

  factory TranscriptionRequest.fromJson(Map<String, dynamic> data) => _$TranscriptionRequestFromJson(data);

  Map<String, dynamic> toJson() => _$TranscriptionRequestToJson(this);

  Future<FormData> get toFormData async {
    return FormData.fromMap(
      {
        'file': await MultipartFile.fromFile(filePath),
      },
      ListFormat.multiCompatible,
    );
  }
}
