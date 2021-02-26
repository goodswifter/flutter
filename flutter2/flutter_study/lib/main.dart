import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("StatelessWidget的生命周期"),
        ),
        body: ADHomeBody(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ADHomeBody extends StatefulWidget {
  @override
  _ADHomeBodyState createState() => _ADHomeBodyState();
}

class _ADHomeBodyState extends State<ADHomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  child: ,
    );
  }
}