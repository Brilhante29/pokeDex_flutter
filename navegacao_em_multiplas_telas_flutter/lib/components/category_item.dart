import 'package:flutter/material.dart';
import 'package:navegacao_em_multiplas_telas_flutter/models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category? category;
  CategoryItem(this.category);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category!.title!),
    );
  }
}
