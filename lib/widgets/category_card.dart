import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/category_card_model.dart';
import 'package:news_cloud_app/pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryPage(
            category: model.name,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Container(
          height: 90,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(model.image),
              )),
          child: Center(
            child: Text(
              model.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
