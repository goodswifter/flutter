import 'package:catefavor/core/model/category_model.dart';
import 'package:catefavor/core/services/json_parse.dart';
import 'package:flutter/material.dart';

class ADHomeContent extends StatefulWidget {
  @override
  _ADHomeContentState createState() => _ADHomeContentState();
}

class _ADHomeContentState extends State<ADHomeContent> {
  List<ADCategoryModel> _categeries = [];

  @override
  void initState() {
    super.initState();

    // 获取数据
    JSONParse.getCategoriesData().then((value) {
      setState(() => _categeries = value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(15),
      itemCount: _categeries.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.5
      ),
      itemBuilder: (ctx, index) {
        final bgColor = _categeries[index].cColor;
        return Container(
          alignment: Alignment.center,
          child: Text(
            _categeries[index].title,
            style: Theme.of(context).textTheme.headline2.copyWith(
              fontWeight: FontWeight.bold
            ),
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            // 渐变
            gradient: LinearGradient(
              colors: [
                bgColor.withOpacity(0.5),
                bgColor
              ]
            )
          ),
        );
      }
    );
  }
}
