// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'articles': instance.articles,
    };

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      url: json['url'] as String?,
      image: json['image'] as String?,
      publishedAt: json['publishedAt'] as String?,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'url': instance.url,
      'image': instance.image,
      'publishedAt': instance.publishedAt,
    };
