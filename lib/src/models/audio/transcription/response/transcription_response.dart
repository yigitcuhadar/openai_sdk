import 'package:json_annotation/json_annotation.dart';

import 'transcription_timestamp.dart';

part 'transcription_response.g.dart';

sealed class TranscriptionResponse {
  /// The transcribed text.
  final String text;
  const TranscriptionResponse({required this.text});

  factory TranscriptionResponse.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('task') && json.containsKey('language') && json.containsKey('duration')) {
      return TranscriptionTimestampResponse.fromJson(json);
    } else {
      return TranscriptionDefaultResponse.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranscriptionDefaultResponse extends TranscriptionResponse {
  const TranscriptionDefaultResponse({
    required super.text,
  });

  factory TranscriptionDefaultResponse.fromJson(Map<String, dynamic> data) => _$TranscriptionDefaultResponseFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$TranscriptionDefaultResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranscriptionTimestampResponse extends TranscriptionResponse {
  final String task;

  /// The language of the input audio.
  final String language;

  /// The duration of the input audio.
  final double duration;

  /// Extracted words and their corresponding timestamps.
  final List<TranscriptionWord>? words;

  /// Segments of the transcribed text and their corresponding details.
  final List<TranscriptionSegment>? segments;

  TranscriptionTimestampResponse({
    required this.task,
    required this.language,
    required this.duration,
    required super.text,
    this.words,
    this.segments,
  }) : assert(words == null && segments == null);

  factory TranscriptionTimestampResponse.fromJson(Map<String, dynamic> json) => _$TranscriptionTimestampResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TranscriptionTimestampResponseToJson(this);
}
