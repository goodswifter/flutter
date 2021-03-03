import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("单子布局Widget"),
        ),
        body: ADLoginPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ADLoginPage extends StatelessWidget {
  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [],
      ),
    );
  }
}
