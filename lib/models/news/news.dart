import 'package:json_annotation/json_annotation.dart';
part 'news.g.dart';

@JsonSerializable()
class News {
  List<Article>? articles;

  News({this.articles});

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}

@JsonSerializable()
class Article {
  String? title;
  String? description;
  String? content;
  String? url;
  String? image;
  String? publishedAt;

  Article({
    this.title,
    this.description,
    this.content,
    this.url,
    this.image,
    this.publishedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return _$ArticleFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
