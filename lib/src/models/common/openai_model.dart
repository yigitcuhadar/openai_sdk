import 'package:json_annotation/json_annotation.dart';

enum OpenAIModel {
  @JsonValue('tts-1')
  tts1(name: 'tts-1'),

  @JsonValue('tts-1-hd')
  tts1hd(name: 'tts-1-hd'),

  @JsonValue('whisper-1')
  whisper1(name: 'whisper-1'),

  @JsonValue('gpt-4o')
  gpt4o(name: 'gpt-4o'),

  @JsonValue('gpt-4o-mini')
  gpt4oMini(name: 'gpt-4o-mini'),

  @JsonValue('gpt-4')
  gpt4(name: 'gpt-4'),

  @JsonValue('gpt-3.5-turbo')
  gpt35turbo(name: 'gpt-3.5-turbo');

  final String name;

  const OpenAIModel({
    required this.name,
  });
}
