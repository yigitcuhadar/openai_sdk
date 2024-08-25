// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionRequest _$CompletionRequestFromJson(Map<String, dynamic> json) =>
    CompletionRequest(
      messages: (json['messages'] as List<dynamic>)
          .map((e) => CompletionMessageBase.fromJson(e as Map<String, dynamic>))
          .toList(),
      model: $enumDecode(_$OpenAIModelEnumMap, json['model']),
      frequencyPenalty: (json['frequency_penalty'] as num?)?.toDouble(),
      logitBias: (json['logit_bias'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      logprobs: json['logprobs'] as bool?,
      topLogprobs: (json['top_logprobs'] as num?)?.toInt(),
      maxTokens: (json['max_tokens'] as num?)?.toInt(),
      n: (json['n'] as num?)?.toInt(),
      presencePenalty: (json['presence_penalty'] as num?)?.toDouble(),
      responseFormat: json['response_format'] == null
          ? null
          : CompletionResponseFormatBase.fromJson(
              json['response_format'] as Map<String, dynamic>),
      seed: (json['seed'] as num?)?.toInt(),
      serviceTier:
          $enumDecodeNullable(_$ServiceTierEnumMap, json['service_tier']),
      stop: json['stop'],
      stream: json['stream'] as bool?,
      streamOptions: json['stream_options'] == null
          ? null
          : StreamOptions.fromJson(
              json['stream_options'] as Map<String, dynamic>),
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      tools: (json['tools'] as List<dynamic>?)
          ?.map((e) => Tool.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompletionRequestToJson(CompletionRequest instance) {
  final val = <String, dynamic>{
    'messages': instance.messages,
    'model': _$OpenAIModelEnumMap[instance.model]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('frequency_penalty', instance.frequencyPenalty);
  writeNotNull('logit_bias', instance.logitBias);
  writeNotNull('logprobs', instance.logprobs);
  writeNotNull('top_logprobs', instance.topLogprobs);
  writeNotNull('max_tokens', instance.maxTokens);
  writeNotNull('n', instance.n);
  writeNotNull('presence_penalty', instance.presencePenalty);
  writeNotNull('response_format', instance.responseFormat);
  writeNotNull('seed', instance.seed);
  writeNotNull('service_tier', _$ServiceTierEnumMap[instance.serviceTier]);
  writeNotNull('stop', instance.stop);
  writeNotNull('stream', instance.stream);
  writeNotNull('stream_options', instance.streamOptions);
  writeNotNull('temperature', instance.temperature);
  writeNotNull('top_p', instance.topP);
  writeNotNull('tools', instance.tools);
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

const _$ServiceTierEnumMap = {
  ServiceTier.auto: 'auto',
  ServiceTier.def: 'default',
};
