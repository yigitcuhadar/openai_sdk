// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcription_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TranscriptionDefaultResponse _$TranscriptionDefaultResponseFromJson(
        Map<String, dynamic> json) =>
    TranscriptionDefaultResponse(
      text: json['text'] as String,
    );

Map<String, dynamic> _$TranscriptionDefaultResponseToJson(
        TranscriptionDefaultResponse instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

TranscriptionTimestampResponse _$TranscriptionTimestampResponseFromJson(
        Map<String, dynamic> json) =>
    TranscriptionTimestampResponse(
      task: json['task'] as String,
      language: json['language'] as String,
      duration: (json['duration'] as num).toDouble(),
      text: json['text'] as String,
      words: (json['words'] as List<dynamic>?)
          ?.map((e) => TranscriptionWord.fromJson(e as Map<String, dynamic>))
          .toList(),
      segments: (json['segments'] as List<dynamic>?)
          ?.map((e) => TranscriptionSegment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TranscriptionTimestampResponseToJson(
    TranscriptionTimestampResponse instance) {
  final val = <String, dynamic>{
    'text': instance.text,
    'task': instance.task,
    'language': instance.language,
    'duration': instance.duration,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('words', instance.words);
  writeNotNull('segments', instance.segments);
  return val;
}
