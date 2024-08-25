import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../common/openai_model.dart';
import 'speech_response_format.dart';
import 'speech_voice.dart';

part 'speech_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SpeechRequest {
  /// One of the available https://platform.openai.com/docs/models/tts TTS models: tts-1 or tts-1-hd
  final OpenAIModel model;

  /// The text to generate audio for. The maximum length is 4096 characters.
  final String input;

  /// The voice to use when generating the audio. Supported voices are alloy, echo, fable, onyx, nova, and shimmer.
  /// Previews of the voices are available in https://platform.openai.com/docs/guides/text-to-speech/voice-options
  final SpeechVoice voice;

  /// The format to audio in. Supported formats are mp3, opus, aac, flac, wav, and pcm.
  /// Defaults to mp3
  final SpeechResponseFormat? responseFormat;

  /// The speed of the generated audio. Select a value from 0.25 to 4.0. 1.0 is the default.
  /// Defaults to 1
  final double? speed;

  const SpeechRequest({
    required this.model,
    required this.input,
    required this.voice,
    this.responseFormat,
    this.speed,
  }) : assert(!((model != OpenAIModel.tts1 && model != OpenAIModel.tts1hd) ||
            input.length > 4096 ||
            (speed != null && (speed < 0.25 || speed > 4.0))));

  factory SpeechRequest.fromJson(Map<String, dynamic> data) => _$SpeechRequestFromJson(data);

  Map<String, dynamic> toJson() => _$SpeechRequestToJson(this);

  FormData get toFormData => FormData.fromMap({...toJson()});
}