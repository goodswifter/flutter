import 'package:flutter/material.dart';

class ADHomeContent extends StatefulWidget {
  @override
  _ADHomeContentState createState() => _ADHomeContentState();
}

class _ADHomeContentState extends State<ADHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("首页内容", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}
