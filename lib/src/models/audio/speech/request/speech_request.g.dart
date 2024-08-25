// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speech_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeechRequest _$SpeechRequestFromJson(Map<String, dynamic> json) =>
    SpeechRequest(
      model: $enumDecode(_$OpenAIModelEnumMap, json['model']),
      input: json['input'] as String,
      voice: $enumDecode(_$SpeechVoiceEnumMap, json['voice']),
      responseFormat: $enumDecodeNullable(
          _$SpeechResponseFormatEnumMap, json['response_format']),
      speed: (json['speed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SpeechRequestToJson(SpeechRequest instance) {
  final val = <String, dynamic>{
    'model': _$OpenAIModelEnumMap[instance.model]!,
    'input': instance.input,
    'voice': _$SpeechVoiceEnumMap[instance.voice]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('response_format',
      _$SpeechResponseFormatEnumMap[instance.responseFormat]);
  writeNotNull('speed', instance.speed);
  return val;
}

const _$OpenAIModelEnumMap = {
  OpenAIModel.tts1: 'tts-1',
  OpenAIModel.tts1hd: 'tts-1-hd',
  OpenAIModel.whisper1: 'whisper-1',
  OpenAIModel.gpt4o: 'gpt-4o',
  OpenAIModel.gpt4oMini: 'gpt-4o-mini',
  OpenAIModel.gpt4: 'gpt-4',
  OpenAIModel.gpt35turbo: 'gpt-3.5-turbo',
};

const _$SpeechVoiceEnumMap = {
  SpeechVoice.alloy: 'alloy',
  SpeechVoice.echo: 'echo',
  SpeechVoice.fable: 'fable',
  SpeechVoice.onyx: 'onyx',
  SpeechVoice.nova: 'nova',
  SpeechVoice.shimmer: 'shimmer',
};

const _$SpeechResponseFormatEnumMap = {
  SpeechResponseFormat.mp3: 'mp3',
  SpeechResponseFormat.opus: 'opus',
  SpeechResponseFormat.aac: 'aac',
  SpeechResponseFormat.flac: 'flac',
  SpeechResponseFormat.wav: 'wav',
  SpeechResponseFormat.pcm: 'pcm',
};
