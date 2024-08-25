import 'package:json_annotation/json_annotation.dart';

enum TranscriptionTimestampGranularity {
  @JsonValue('word')
  word(name: 'word'),

  @JsonValue('segment')
  segment(name: 'segment');

  final String name;

  const TranscriptionTimestampGranularity({
    required this.name,
  });
}
