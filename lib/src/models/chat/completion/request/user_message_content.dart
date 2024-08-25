import 'package:json_annotation/json_annotation.dart';

part 'user_message_content.g.dart';

sealed class UserMessageContentBase {
  final String type;

  const UserMessageContentBase({
    required this.type,
  });

  factory UserMessageContentBase.fromJson(Map<String, dynamic> json) {
    if (json['type'] == 'text') {
      return UserMessageTextContent.fromJson(json);
    } else {
      return UserMessageImageContent.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class UserMessageTextContent extends UserMessageContentBase {
  final String text;

  const UserMessageTextContent({
    super.type = 'text',
    required this.text,
  });

  factory UserMessageTextContent.fromJson(Map<String, dynamic> data) => _$UserMessageTextContentFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$UserMessageTextContentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class UserMessageImageContent extends UserMessageContentBase {
  final String imageUrl;

  const UserMessageImageContent({
    super.type = 'image',
    required this.imageUrl,
  });

  factory UserMessageImageContent.fromJson(Map<String, dynamic> data) => _$UserMessageImageContentFromJson(data);
  @override
  Map<String, dynamic> toJson() => _$UserMessageImageContentToJson(this);
}
