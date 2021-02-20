import 'package:flutter/material.dart';

import 'package:flutter_quiz_app/model/category.dart';

class CategoryDetail extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onSelectedCategory;

  const CategoryDetail({
    Key key,
    @required this.category,
    @required this.onSelectedCategory,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelectedCategory(category),
      child: Container(
        padding: EdgeInsets.only(right: 10),
        width: MediaQuery.of(context).size.width * .65,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImage(),
            SizedBox(height: 12,),
            Text(
              category.categoryName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 4,),
            Text(
              category.description,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage() => Container(
    height: 150,
    decoration: BoxDecoration(
      color: category.backgroundColor,
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(image: NetworkImage(category.imageUrl),fit: BoxFit.cover),
    ),
  );
}
