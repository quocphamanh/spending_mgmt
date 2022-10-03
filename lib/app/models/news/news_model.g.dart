// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'title',
      'description',
      'articleIds',
      'createdAt',
      'updatedAt'
    ],
  );
  return News(
    json['title'] as String,
    json['description'] as String,
    (json['articleIds'] as List<dynamic>).map((e) => e as String).toList(),
    json['createdAt'] as String,
    json['updatedAt'] as String,
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'articleIds': instance.articleIds,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
