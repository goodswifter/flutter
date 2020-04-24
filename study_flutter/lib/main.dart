import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("基础Widget"),
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
  final imageURL = "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1587721847&di=b7b3b1f2882f7e015ebc321dff2e672e&src=http://pic1.win4000.com/wallpaper/2017-10-30/59f68513a33ca.jpg";

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}





