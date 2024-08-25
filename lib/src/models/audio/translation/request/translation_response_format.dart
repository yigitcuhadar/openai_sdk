import 'package:json_annotation/json_annotation.dart';

enum TranslationResponseFormat {
  @JsonValue('json')
  json(name: 'json'),

  @JsonValue('text')
  text(name: 'text'),

  @JsonValue('srt')
  srt(name: 'srt'),

  @JsonValue('verbose_json')
  verboseJson(name: 'verbose_json'),

  @JsonValue('vtt')
  vtt(name: 'vtt');

  final String name;

  const TranslationResponseFormat({
    required this.name,
  });
}
