// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_call.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToolCall _$ToolCallFromJson(Map<String, dynamic> json) => ToolCall(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'function',
      function:
          ToolCallFunction.fromJson(json['function'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ToolCallToJson(ToolCall instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'function': instance.function,
    };
