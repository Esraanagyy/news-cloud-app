import 'package:flutter/material.dart';
import 'package:news_cloud_app/widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "News",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Cloud",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            )
          ],
        ));
  }
}
