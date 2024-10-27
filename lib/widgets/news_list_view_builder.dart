import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article_model.dart';

import '../services/news_services.dart';
import 'news_listview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    future = NewsServices(Dio()).getNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListview(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "oops!!"
                "\n"
                "there was an error , try later",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange,
                ),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
              child: Center(
                  child: CircularProgressIndicator(
            color: Colors.blue,
          )));
        }
      },
    );
  }
}
