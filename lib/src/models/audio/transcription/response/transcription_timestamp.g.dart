// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranscriptionWord _$TranscriptionWordFromJson(Map<String, dynamic> json) =>
    TranscriptionWord(
      word: json['word'] as String,
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
    );

Map<String, dynamic> _$TranscriptionWordToJson(TranscriptionWord instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'word': instance.word,
    };

TranscriptionSegment _$TranscriptionSegmentFromJson(
        Map<String, dynamic> json) =>
    TranscriptionSegment(
      id: (json['id'] as num).toInt(),
      seek: (json['seek'] as num).toInt(),
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
      text: json['text'] as String,
      tokens: (json['tokens'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      temperature: (json['temperature'] as num).toDouble(),
      avgLogprob: (json['avg_logprob'] as num).toDouble(),
      compressionRatio: (json['compression_ratio'] as num).toDouble(),
      noSpeechProb: (json['no_speech_prob'] as num).toDouble(),
    );

Map<String, dynamic> _$TranscriptionSegmentToJson(
        TranscriptionSegment instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'id': instance.id,
      'seek': instance.seek,
      'text': instance.text,
      'tokens': instance.tokens,
      'temperature': instance.temperature,
      'avg_logprob': instance.avgLogprob,
      'compression_ratio': instance.compressionRatio,
      'no_speech_prob': instance.noSpeechProb,
    };
