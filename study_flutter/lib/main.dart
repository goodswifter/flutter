import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("key的案例解析"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.delete),
          onPressed: (() {

          }),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        body: ADHomeContent(),
      ),
    );
  }
}

class ADHomeContent extends StatefulWidget {
  @override
  _ADHomeContentState createState() => _ADHomeContentState();
}

class _ADHomeContentState extends State<ADHomeContent> {
  final List<String> names = ["aaaa", "bbbb", "cccc"];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
