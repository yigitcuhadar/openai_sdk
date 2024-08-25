import 'package:json_annotation/json_annotation.dart';

part 'translation_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class TranslationResponse {
  final String text;
  const TranslationResponse({
    required this.text,
  });

  factory TranslationResponse.fromJson(Map<String, dynamic> data) => _$TranslationResponseFromJson(data);

  Map<String, dynamic> toJson() => _$TranslationResponseToJson(this);
}
