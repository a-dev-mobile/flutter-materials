import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class Category {
  // ignore: non_constant_identifier_names
  String category_;

  Category(this.category_);

  factory Category.fromJson(Map<String, dynamic> data) =>
      _$CategoryFromJson(data);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  var s = Category(json['category_'] as String);

  return s;
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'category_': instance.category_,
    };
