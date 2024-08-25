import 'package:json_annotation/json_annotation.dart';

import 'tool_call_function.dart';

part 'tool_call.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ToolCall {
  /// The ID of the tool call.
  final String id;

  /// The type of the tool. Currently, only function is supported.
  final String type;

  /// The function that the model called.
  final ToolCallFunction function;

  const ToolCall({
    required this.id,
    this.type = 'function',
    required this.function,
  });
  factory ToolCall.fromJson(Map<String, dynamic> data) => _$ToolCallFromJson(data);

  Map<String, dynamic> toJson() => _$ToolCallToJson(this);
}
