import 'package:flutter/material.dart';
import 'package:news_cloud_app/widgets/category_listview.dart';

import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            SliverToBoxAdapter(child: CategoryListview()),
            const SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
            const NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ));
  }
}
