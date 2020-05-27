import 'package:catefavor/core/viewmodel/favor_view_model.dart';
import 'package:catefavor/ui/pages/home/meal/meal_content_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ADFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ADFavorViewModel>(
      builder: (ctx, favorVM, child) {
        if (favorVM.favorMeals.length == 0) {
          return Center(child: Text("为收藏美食"),);
        }
        return ListView.builder(
          itemCount: favorVM.favorMeals.length,
          itemBuilder: (ctx, index) => ADMealContentItem(favorVM.favorMeals[index]),
        );
      },
    );
  }
}
