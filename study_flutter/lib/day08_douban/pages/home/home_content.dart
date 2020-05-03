import 'package:flutter/material.dart';
import 'package:study_flutter/day08_douban/model/home_model.dart';
import 'package:study_flutter/day08_douban/pages/home/home_movie_item.dart';
import 'package:study_flutter/day08_douban/service/home_request.dart';

class ADHomeContent extends StatefulWidget {
  @override
  _ADHomeContentState createState() => _ADHomeContentState();
}

class _ADHomeContentState extends State<ADHomeContent> {
  final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
    // 发送网络请求
    HomeRequest.requestMovieList().then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (ctx, index) {
        return ADHomeMovieItem(movies[index]);
      }
    );
  }
}
