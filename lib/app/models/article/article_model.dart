import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:spending_mgmt/app/models/news/news_model.dart';

part 'article_model.g.dart';

@JsonSerializable(explicitToJson: true)
// ignore: must_be_immutable
class ArticleModel extends Equatable {
  ArticleModel(this.name, this.avatarUrl, this.description, this.news);

  @JsonKey(required: true)
  String name;
  @JsonKey(required: true)
  String avatarUrl;
  String description;
  News news;

  @override
  List<Object?> get props => [name, avatarUrl, description, news];

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
