import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n_demo03/i18n/localizations_init.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent),
      home: ADHomePage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate, // 指定默认的文本排列方向, 由左到右或由右到左
//        S.delegate, // 自定义文本相关的代理
      ],
//      supportedLocales: ;,
    );
  }
}

class ADHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(ADLocalizations.of(context).pickTime);

    return Scaffold(
      appBar: AppBar(
        title: Text(ADLocalizations.of(context).title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(ADLocalizations.of(context).hello, style: TextStyle(fontSize: 20),),
            RaisedButton(
              child: Text(ADLocalizations.of(context).pickTime, style: TextStyle(fontSize: 20),),
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000)
                );
              },
            )
          ],
        ),
      ),
    );
  }
}