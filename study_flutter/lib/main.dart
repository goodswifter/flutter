import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print("FloatingActionButton Click"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ADHomeContent(),
      ),
    );
  }
}

class ADHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}