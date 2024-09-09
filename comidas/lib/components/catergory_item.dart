import 'package:flutter/material.dart';
import '../models/categorys.dart';

class CatergoryItem extends StatelessWidget {
  const CatergoryItem(this.category, {super.key});
  
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(category.title),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.5),
            category.color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
    );
  }
}