import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article_model.dart';

class NewsTiles extends StatelessWidget {
  const NewsTiles({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930",
              height: 210,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            articleModel.description ?? " ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
