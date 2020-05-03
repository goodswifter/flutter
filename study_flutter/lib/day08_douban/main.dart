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
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent
      ),
      home: ADMainPage(),
    );
  }
}

class ADHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ADMainPage();
  }
}