import 'package:flutter/material.dart';
import 'package:study_flutter/day08_douban/service/http_request.dart';

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

class ADHomeContent extends StatefulWidget {
  @override
  _ADHomeContentState createState() => _ADHomeContentState();
}

class _ADHomeContentState extends State<ADHomeContent> {

  @override
  void initState() {
    super.initState();

    HttpRequest.request("/movie/top250").then((res) {
      print(res);
    }).catchError((err) {
      print("=== + ${err.toString()}");
    });

//    HttpRequest.request("/movie/top250").then((res) {
//      print(res);
//    }).catchError((err) {
//      print(err);
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}