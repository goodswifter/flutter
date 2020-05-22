import 'package:flutter/material.dart';

import 'home_content.dart';

class ADHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("美味佳肴"),),
      body: ADHomeContent(),
    );
  }
}
