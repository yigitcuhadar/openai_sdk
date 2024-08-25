// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranslationRequest _$TranslationRequestFromJson(Map<String, dynamic> json) =>
    TranslationRequest(
      filePath: json['file_path'] as String,
      model: $enumDecode(_$OpenAIModelEnumMap, json['model']),
      prompt: json['prompt'] as String?,
      responseFormat: $enumDecodeNullable(
          _$TranslationResponseFormatEnumMap, json['response_format']),
      temperature: (json['temperature'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TranslationRequestToJson(TranslationRequest instance) {
  final val = <String, dynamic>{
    'model': _$OpenAIModelEnumMap[instance.model]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prompt', instance.prompt);
  writeNotNull('response_format',
      _$TranslationResponseFormatEnumMap[instance.responseFormat]);
  writeNotNull('temperature', instance.temperature);
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

const _$TranslationResponseFormatEnumMap = {
  TranslationResponseFormat.json: 'json',
  TranslationResponseFormat.text: 'text',
  TranslationResponseFormat.srt: 'srt',
  TranslationResponseFormat.verboseJson: 'verbose_json',
  TranslationResponseFormat.vtt: 'vtt',
};
