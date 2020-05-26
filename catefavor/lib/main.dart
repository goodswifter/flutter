import 'package:catefavor/core/router/router.dart';
import 'package:catefavor/core/viewmodel/meal_view_model.dart';
import 'package:catefavor/ui/shared/app_theme.dart';
import 'package:catefavor/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(
  ChangeNotifierProvider(
    create: (ctx) => ADMealViewModel(),
    child: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 对ADSizeFit进行初始化
    ADSizeFit.initialize();

    return MaterialApp(
      title: '美味佳肴',
      // 主题
      theme: ADAppTheme.normalTheme,
      // 路由
      initialRoute: ADRouter.initialRoute,
      routes: ADRouter.routes,
      onGenerateRoute: ADRouter.generateRoute,
      onUnknownRoute: ADRouter.unknownRoute,
    );
  }
}