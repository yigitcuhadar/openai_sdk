import 'package:json_annotation/json_annotation.dart';

enum SpeechResponseFormat {
  @JsonValue('mp3')
  mp3(name: 'mp3'),

  @JsonValue('opus')
  opus(name: 'opus'),

  @JsonValue('aac')
  aac(name: 'aac'),

  @JsonValue('flac')
  flac(name: 'flac'),

  @JsonValue('wav')
  wav(name: 'wav'),

  @JsonValue('pcm')
  pcm(name: 'pcm');

  final String name;

  const SpeechResponseFormat({
    required this.name,
  });
}
