// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_message_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMessageTextContent _$UserMessageTextContentFromJson(
        Map<String, dynamic> json) =>
    UserMessageTextContent(
      type: json['type'] as String? ?? 'text',
      text: json['text'] as String,
    );

Map<String, dynamic> _$UserMessageTextContentToJson(
        UserMessageTextContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };

UserMessageImageContent _$UserMessageImageContentFromJson(
        Map<String, dynamic> json) =>
    UserMessageImageContent(
      type: json['type'] as String? ?? 'image',
      imageUrl: json['image_url'] as String,
    );

Map<String, dynamic> _$UserMessageImageContentToJson(
        UserMessageImageContent instance) =>
    <String, dynamic>{
      'type': instance.type,
      'image_url': instance.imageUrl,
    };
