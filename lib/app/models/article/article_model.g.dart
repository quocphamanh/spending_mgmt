// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'avatarUrl'],
  );
  return ArticleModel(
    json['name'] as String,
    json['avatarUrl'] as String,
    json['description'] as String,
    News.fromJson(json['news'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
      'description': instance.description,
      'news': instance.news.toJson(),
    };
