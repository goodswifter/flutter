import 'package:catefavor/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class ADDetailPage extends StatelessWidget {
  static final String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as ADMealModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Text(meal.title),
    );
  }
}