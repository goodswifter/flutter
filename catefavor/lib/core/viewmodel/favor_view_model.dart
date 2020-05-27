import 'package:catefavor/core/model/meal_model.dart';
import 'package:flutter/material.dart';

class ADFavorViewModel extends ChangeNotifier {
  List<ADMealModel> _favorMeals = [];

  List<ADMealModel> get favorMeals {
    return _favorMeals;
  }

  void addMeals(ADMealModel meal) {
    _favorMeals.add(meal);
    notifyListeners();
  }

  void removeMeals(ADMealModel meal) {
    _favorMeals.remove(meal);
    notifyListeners();
  }

  void handleMeals(ADMealModel meal) {
    if (isFavor(meal)) {
      removeMeals(meal);
    } else {
      addMeals(meal);
    }
  }

  bool isFavor(ADMealModel meal) {
    return _favorMeals.contains(meal);
  }
}