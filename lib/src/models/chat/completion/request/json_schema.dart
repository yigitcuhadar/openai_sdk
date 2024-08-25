import 'package:json_annotation/json_annotation.dart';

part 'json_schema.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class JsonSchema {
  /// A description of what the response format is for, used by the model to determine how to respond in the format.
  final String? description;

  /// The name of the response format. Must be a-z, A-Z, 0-9, or contain underscores and dashes, with a maximum length of 64.
  final String name;

  /// The schema for the response format, described as a JSON Schema object.
  final Map<String, dynamic>? schema;

  /// Whether to enable strict schema adherence when generating the output. If set to true, the model will always follow the exact schema defined in the schema field.
  /// Only a subset of JSON Schema is supported when strict is true. To learn more, read the https://platform.openai.com/docs/guides/structured-outputs
  /// Defaults to false
  final bool? strict;

  const JsonSchema({
    this.description,
    required this.name,
    this.schema,
    this.strict,
  });

  factory JsonSchema.fromJson(Map<String, dynamic> data) => _$JsonSchemaFromJson(data);
  Map<String, dynamic> toJson() => _$JsonSchemaToJson(this);
}
