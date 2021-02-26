// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Material_ _$Material_FromJson(Map<String, dynamic> json) {
  return Material_(
    json['class_'] as String,
    json['name_'] as String,
    json['add_'] as String,
    json['use_'] as String,
    json['replace_'] as String,
    json['chem_'] as String,
    json['id_'] as int,
  );
}

Map<String, dynamic> _$Material_ToJson(Material_ instance) => <String, dynamic>{
      'class_': instance.class_,
      'name_': instance.name_,
      'add_': instance.add_,
      'use_': instance.use_,
      'replace_': instance.replace_,
      'chem_': instance.chem_,
      'id_': instance.id_,
    };
