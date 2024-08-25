import 'package:json_annotation/json_annotation.dart';

part 'stream_options.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class StreamOptions {
  /// If set, an additional chunk will be streamed before the data: [DONE] message. The usage field on this chunk shows the token usage statistics for the entire request, and the choices field will always be an empty array. 
  /// All other chunks will also include a usage field, but with a null value.
  @JsonKey(name: 'include_usage')
  final bool? includeUsage;


  const StreamOptions({
    this.includeUsage,
  });

  factory StreamOptions.fromJson(Map<String, dynamic> data) => _$StreamOptionsFromJson(data);
  Map<String, dynamic> toJson() => _$StreamOptionsToJson(this);
}
