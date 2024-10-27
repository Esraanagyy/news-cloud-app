import 'package:flutter/cupertino.dart';
import 'package:news_cloud_app/models/category_card_model.dart';
import 'package:news_cloud_app/widgets/category_card.dart';

class CategoryListview extends StatelessWidget {
  CategoryListview({super.key});
  final List<CategoryModel> model = [
    CategoryModel(name: "Business", image: "assets/business.avif"),
    CategoryModel(name: "Entertainment", image: "assets/entertaiment.avif"),
    CategoryModel(name: "General", image: "assets/general.avif"),
    CategoryModel(name: "Health", image: "assets/health.avif"),
    CategoryModel(name: "Science", image: "assets/science.avif"),
    CategoryModel(name: "Sports", image: "assets/sports.avif"),
    CategoryModel(name: "Technology", image: "assets/technology.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.length,
            itemBuilder: (context, index) {
              return CategoryCard(model: model[index]);
            }),
      ),
    );
  }
}
