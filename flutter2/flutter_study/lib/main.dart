import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("按钮Widget"),
        ),
        body: ADHomeBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print("floatingActionButton - Click"),
          child: Icon(Icons.add),
        ),
        // FloatingActionButton位置设置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ADHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // 网络图片
          NetworkImageWidget(),
        ],
      ),
    );
  }
}

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({Key key}) : super(key: key);

  final String imageURL =
      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fattachments.gfan.com%2Fforum%2Fattachments2%2Fday_110915%2F1109151356c0717d7e6a91e985.jpg&refer=http%3A%2F%2Fattachments.gfan.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1617270747&t=b6ab76d4e2c4cebdf8a00470424e5f29";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: NetworkImage(imageURL),
        width: 300,
        height: 200,
        fit: BoxFit.contain,
        repeat: ImageRepeat.repeatY,
        // 范围(-1, 1)
        alignment: Alignment(0, 0),
      ),
    );
  }
}
