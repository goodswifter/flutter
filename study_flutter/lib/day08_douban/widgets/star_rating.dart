import 'package:flutter/material.dart';

class ADStarRating extends StatefulWidget {
  final double rating; // 分数
  final double maxRating; // 最大分数
  final int count; // 星的个数
  final double size; // 星的大小
  final Color unselectedColor; // 未选中的颜色
  final Color selectedColor; // 选中的颜色

  final Widget unselectedImage; // 未选中的图片
  final Widget selectedImage; // 选中的图片

  ADStarRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget unselectedImage,
    Widget selectedImage
  }): unselectedImage = unselectedImage ?? Icon(Icons.star_border, color: unselectedColor, size: size),
        selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size);

  @override
  _ADStarRatingState createState() => _ADStarRatingState();
}

class _ADStarRatingState extends State<ADStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min, children: buildUnselectedStar(),)
      ],
    );
  }

  // 创建未选中的星
  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  // 创建选中的星
}
