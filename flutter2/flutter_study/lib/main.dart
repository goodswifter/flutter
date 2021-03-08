import 'package:flutter/material.dart';
import 'f08-douban/pages/main/douban_main.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      // 主题颜色
      theme: ThemeData(
        // primaryColor: Colors.green,
        // 点击效果取消
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: ADMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
