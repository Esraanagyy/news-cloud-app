import 'package:flutter/material.dart';
import 'package:news_cloud_app/widgets/news_tiles.dart';

import '../models/article_model.dart';

class NewsListview extends StatelessWidget {
  const NewsListview({super.key, required this.articles});
  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return NewsTiles(
        articleModel: articles[index],
      );
    }));
  }
}
