import 'package:json_annotation/json_annotation.dart';

enum ServiceTier {
  @JsonValue('auto')
  auto(name: 'auto'),

  @JsonValue('default')
  def(name: 'default');

  final String name;

  const ServiceTier({
    required this.name,
  });
}
