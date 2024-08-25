import 'package:json_annotation/json_annotation.dart';

import 'json_schema.dart';

part 'completion_response_format.g.dart';

sealed class CompletionResponseFormatBase {
  /// The type of response format
  final String type;

  const CompletionResponseFormatBase({
    required this.type,
  });

  factory CompletionResponseFormatBase.fromJson(Map<String, dynamic> json) {
    if (json['type'] == 'text') {
      return CompletionResponseFormatText.fromJson(json);
    } else if (json['type'] == 'json_object') {
      return CompletionResponseFormatJsonObject.fromJson(json);
    } else {
      return CompletionResponseFormatJsonSchema.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CompletionResponseFormatText extends CompletionResponseFormatBase {
  const CompletionResponseFormatText({
    super.type = 'text',
  });

  factory CompletionResponseFormatText.fromJson(Map<String, dynamic> data) => _$CompletionResponseFormatTextFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$CompletionResponseFormatTextToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CompletionResponseFormatJsonObject extends CompletionResponseFormatBase {
  const CompletionResponseFormatJsonObject({
    super.type = 'json_object',
  });

  factory CompletionResponseFormatJsonObject.fromJson(Map<String, dynamic> data) =>
      _$CompletionResponseFormatJsonObjectFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$CompletionResponseFormatJsonObjectToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CompletionResponseFormatJsonSchema extends CompletionResponseFormatBase {
  @JsonKey(name: 'json_schema')
  final JsonSchema jsonSchema;

  const CompletionResponseFormatJsonSchema({
    super.type = 'json_schema',
    required this.jsonSchema,
  });

  factory CompletionResponseFormatJsonSchema.fromJson(Map<String, dynamic> data) =>
      _$CompletionResponseFormatJsonSchemaFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$CompletionResponseFormatJsonSchemaToJson(this);
}
