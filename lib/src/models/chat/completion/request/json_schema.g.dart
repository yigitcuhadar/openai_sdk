// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonSchema _$JsonSchemaFromJson(Map<String, dynamic> json) => JsonSchema(
      description: json['description'] as String?,
      name: json['name'] as String,
      schema: json['schema'] as Map<String, dynamic>?,
      strict: json['strict'] as bool?,
    );

Map<String, dynamic> _$JsonSchemaToJson(JsonSchema instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['name'] = instance.name;
  writeNotNull('schema', instance.schema);
  writeNotNull('strict', instance.strict);
  return val;
}
