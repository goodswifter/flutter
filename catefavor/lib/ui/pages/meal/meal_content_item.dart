import 'package:catefavor/core/model/meal_model.dart';
import 'package:catefavor/ui/pages/detail/detail.dart';
import 'package:flutter/material.dart';
import '../../../core/extension/int_extension.dart';
import 'meal_content_operation_item.dart';

final cardRadius = 12.px;

class ADMealContentItem extends StatelessWidget {
  final ADMealModel _meal;

  ADMealContentItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(cardRadius)),
        child: Column(
          children: <Widget>[
            itemBasicInfo(context),
            itemOperationInfo(),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(ADDetailPage.routeName, arguments: _meal);
      },
    );
  }

  Widget itemBasicInfo(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardRadius),
            topRight: Radius.circular(cardRadius),
          ),
          child: Image.network(_meal.imageUrl, width: double.infinity, height: 250.px, fit: BoxFit.cover,)
        ),
        Positioned(
          right: 10,
          bottom: 5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(6.px)
            ),
            child: Text(_meal.title, style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.white),),
          ),
        ),
      ]
    );
  }

  Widget itemOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ADOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
          ADOperationItem(Icon(Icons.restaurant), _meal.complexStr),
          ADOperationItem(Icon(Icons.favorite), "未收藏"),
        ],
      ),
    );
  }
}


