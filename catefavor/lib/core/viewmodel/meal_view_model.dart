import 'package:catefavor/core/model/meal_model.dart';
import 'package:catefavor/core/services/meal_request.dart';
import 'package:flutter/cupertino.dart';

class ADMealViewModel extends ChangeNotifier {
  List<ADMealModel> _meals = [];

  List<ADMealModel> get meals {
    return _meals;
  }

  ADMealViewModel() {
    ADMealRequest.getMealData().then((value) {
      _meals = value;
      notifyListeners();
    });
  }
}