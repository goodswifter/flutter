import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("第一个Flutter应用"),
      ),
      body: Center(
        child: Text(
          "Hello World",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 36),
        ),
      ),
    ),
  ));
}
