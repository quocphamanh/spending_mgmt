import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_model.g.dart';

@JsonSerializable()
// ignore: must_be_immutable
class News extends Equatable {
  News(this.title, this.description, this.articleIds, this.createdAt,
      this.updatedAt);

  @JsonKey(required: true)
  String title;
  @JsonKey(required: true)
  String description;
  @JsonKey(required: true)
  List<String> articleIds;
  @JsonKey(required: true)
  String createdAt;
  @JsonKey(required: true)
  String updatedAt;

  @override
  List<Object?> get props =>
      [title, description, articleIds, createdAt, updatedAt];

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}
