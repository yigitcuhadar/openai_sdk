// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_response_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionResponseFormatText _$CompletionResponseFormatTextFromJson(
        Map<String, dynamic> json) =>
    CompletionResponseFormatText(
      type: json['type'] as String? ?? 'text',
    );

Map<String, dynamic> _$CompletionResponseFormatTextToJson(
        CompletionResponseFormatText instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

CompletionResponseFormatJsonObject _$CompletionResponseFormatJsonObjectFromJson(
        Map<String, dynamic> json) =>
    CompletionResponseFormatJsonObject(
      type: json['type'] as String? ?? 'json_object',
    );

Map<String, dynamic> _$CompletionResponseFormatJsonObjectToJson(
        CompletionResponseFormatJsonObject instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

CompletionResponseFormatJsonSchema _$CompletionResponseFormatJsonSchemaFromJson(
        Map<String, dynamic> json) =>
    CompletionResponseFormatJsonSchema(
      type: json['type'] as String? ?? 'json_schema',
      jsonSchema:
          JsonSchema.fromJson(json['json_schema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompletionResponseFormatJsonSchemaToJson(
        CompletionResponseFormatJsonSchema instance) =>
    <String, dynamic>{
      'type': instance.type,
      'json_schema': instance.jsonSchema,
    };
