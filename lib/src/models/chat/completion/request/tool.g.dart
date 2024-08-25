// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tool _$ToolFromJson(Map<String, dynamic> json) => Tool(
      type: json['type'] as String,
      function: JsonSchema.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ToolToJson(Tool instance) => <String, dynamic>{
      'type': instance.type,
      'function': instance.function,
    };
