// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreamOptions _$StreamOptionsFromJson(Map<String, dynamic> json) =>
    StreamOptions(
      includeUsage: json['include_usage'] as bool?,
    );

Map<String, dynamic> _$StreamOptionsToJson(StreamOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('include_usage', instance.includeUsage);
  return val;
}
