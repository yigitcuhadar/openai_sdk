import 'package:json_annotation/json_annotation.dart';

enum SpeechVoice {
  @JsonValue('alloy')
  alloy(name: 'alloy'),

  @JsonValue('echo')
  echo(name: 'echo'),

  @JsonValue('fable')
  fable(name: 'fable'),

  @JsonValue('onyx')
  onyx(name: 'onyx'),

  @JsonValue('nova')
  nova(name: 'nova'),

  @JsonValue('shimmer')
  shimmer(name: 'shimmer');

  final String name;

  const SpeechVoice({
    required this.name,
  });
}
