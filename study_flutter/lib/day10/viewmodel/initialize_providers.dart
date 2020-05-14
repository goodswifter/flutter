import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:study_flutter/day10/model/user_info.dart';
import 'package:study_flutter/day10/viewmodel/counter_view_model.dart';
import 'package:study_flutter/day10/viewmodel/user_view_model.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => ADCounterViewModel(),),
  ChangeNotifierProvider(create: (ctx) => ADUserViewModel(UserInfo('zad', 18, 'url')),),
];