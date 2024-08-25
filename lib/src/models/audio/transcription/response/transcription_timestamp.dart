import 'package:json_annotation/json_annotation.dart';

part 'transcription_timestamp.g.dart';

sealed class TranscriptionTimestampBase {
  /// Start time of the word in seconds.
  final double start;

  /// End time of the word in seconds.
  final double end;

  const TranscriptionTimestampBase({
    required this.start,
    required this.end,
  });

  factory TranscriptionTimestampBase.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('word')) {
      return TranscriptionWord.fromJson(json);
    } else {
      return TranscriptionSegment.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranscriptionWord extends TranscriptionTimestampBase {
  /// The text content of the word.
  final String word;

  const TranscriptionWord({
    required this.word,
    required super.start,
    required super.end,
  });

  factory TranscriptionWord.fromJson(Map<String, dynamic> data) => _$TranscriptionWordFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$TranscriptionWordToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranscriptionSegment extends TranscriptionTimestampBase {
  /// Unique identifier of the segment.
  final int id;

  /// Seek offset of the segment.
  final int seek;

  /// Text content of the segment.
  final String text;

  /// Array of token IDs for the text content.
  final List<int> tokens;

  /// Temperature parameter used for generating the segment.
  final double temperature;

  /// Average logprob of the segment. If the value is lower than -1, consider the logprobs failed.
  final double avgLogprob;

  /// Compression ratio of the segment. If the value is greater than 2.4, consider the compression failed.
  final double compressionRatio;

  /// Probability of no speech in the segment. If the value is higher than 1.0 and the avg_logprob is below -1, consider this segment silent.
  final double noSpeechProb;

  const TranscriptionSegment({
    required this.id,
    required this.seek,
    required super.start,
    required super.end,
    required this.text,
    required this.tokens,
    required this.temperature,
    required this.avgLogprob,
    required this.compressionRatio,
    required this.noSpeechProb,
  });

  factory TranscriptionSegment.fromJson(Map<String, dynamic> data) => _$TranscriptionSegmentFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$TranscriptionSegmentToJson(this);
}
