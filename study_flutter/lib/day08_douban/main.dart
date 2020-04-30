import 'dart:math';

import 'package:flutter/material.dart';
import 'package:study_flutter/day08_douban/pages/main/main.dart';
import 'package:study_flutter/day08_douban/widgets/dashed_line.dart';
import 'package:study_flutter/day08_douban/widgets/star_rating.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: ADHomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.red,
        // splash: 水花效果
        // transparent: 透明的
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
    );
  }
}

class ADHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ADMainPage();
  }
}