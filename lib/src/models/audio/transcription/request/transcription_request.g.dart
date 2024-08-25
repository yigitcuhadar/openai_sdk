// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranscriptionRequest _$TranscriptionRequestFromJson(
        Map<String, dynamic> json) =>
    TranscriptionRequest(
      filePath: json['file_path'] as String,
      model: $enumDecode(_$OpenAIModelEnumMap, json['model']),
      language: json['language'] as String?,
      prompt: json['prompt'] as String?,
      responseFormat: $enumDecodeNullable(
          _$TranscriptionResponseFormatEnumMap, json['response_format']),
      temperature: (json['temperature'] as num?)?.toDouble(),
      timestampGranularities: (json['timestamp_granularities']
              as List<dynamic>?)
          ?.map(
              (e) => $enumDecode(_$TranscriptionTimestampGranularityEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$TranscriptionRequestToJson(
    TranscriptionRequest instance) {
  final val = <String, dynamic>{
    'model': _$OpenAIModelEnumMap[instance.model]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('language', instance.language);
  writeNotNull('prompt', instance.prompt);
  writeNotNull('response_format',
      _$TranscriptionResponseFormatEnumMap[instance.responseFormat]);
  writeNotNull('temperature', instance.temperature);
  writeNotNull(
      'timestamp_granularities',
      instance.timestampGranularities
          ?.map((e) => _$TranscriptionTimestampGranularityEnumMap[e]!)
          .toList());
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

const _$TranscriptionResponseFormatEnumMap = {
  TranscriptionResponseFormat.json: 'json',
  TranscriptionResponseFormat.text: 'text',
  TranscriptionResponseFormat.srt: 'srt',
  TranscriptionResponseFormat.verboseJson: 'verbose_json',
  TranscriptionResponseFormat.vtt: 'vtt',
};

const _$TranscriptionTimestampGranularityEnumMap = {
  TranscriptionTimestampGranularity.word: 'word',
  TranscriptionTimestampGranularity.segment: 'segment',
};
