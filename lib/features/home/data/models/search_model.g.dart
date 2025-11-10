// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => _SearchModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  type: json['type'] as String,
  definition: json['definition'] as String?,
);

Map<String, dynamic> _$SearchModelToJson(_SearchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'definition': instance.definition,
    };
