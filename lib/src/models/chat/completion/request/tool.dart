import 'package:json_annotation/json_annotation.dart';

import 'json_schema.dart';

part 'tool.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Tool {
  /// The type of the tool. Currently, only function is supported.
  final String type;

  final JsonSchema function;

  const Tool({
    required this.type,
    required this.function,
  });

  factory Tool.fromJson(Map<String, dynamic> data) => _$ToolFromJson(data);
  Map<String, dynamic> toJson() => _$ToolToJson(this);
}
