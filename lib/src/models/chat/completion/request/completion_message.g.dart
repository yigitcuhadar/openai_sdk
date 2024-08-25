// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionSystemMessage _$CompletionSystemMessageFromJson(
        Map<String, dynamic> json) =>
    CompletionSystemMessage(
      content: json['content'] as String,
      role: json['role'] as String? ?? 'system',
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CompletionSystemMessageToJson(
    CompletionSystemMessage instance) {
  final val = <String, dynamic>{
    'role': instance.role,
    'content': instance.content,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

CompletionAssistantMessage _$CompletionAssistantMessageFromJson(
        Map<String, dynamic> json) =>
    CompletionAssistantMessage(
      content: json['content'] as String?,
      refusal: json['refusal'] as String?,
      role: json['role'] as String? ?? 'assistant',
      name: json['name'] as String?,
      toolCalls: (json['tool_calls'] as List<dynamic>?)
          ?.map((e) => ToolCall.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompletionAssistantMessageToJson(
    CompletionAssistantMessage instance) {
  final val = <String, dynamic>{
    'role': instance.role,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('content', instance.content);
  writeNotNull('refusal', instance.refusal);
  writeNotNull('name', instance.name);
  writeNotNull('tool_calls', instance.toolCalls);
  return val;
}

CompletionToolMessage _$CompletionToolMessageFromJson(
        Map<String, dynamic> json) =>
    CompletionToolMessage(
      role: json['role'] as String? ?? 'tool',
      content: json['content'] as String,
      toolCallId: json['tool_call_id'] as String,
    );

Map<String, dynamic> _$CompletionToolMessageToJson(
        CompletionToolMessage instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
      'tool_call_id': instance.toolCallId,
    };
