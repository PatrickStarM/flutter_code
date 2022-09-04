import 'package:flutter/material.dart';
import 'package:flutter_code/pages/AppBarPage.dart';
import 'package:flutter_code/pages/AppBarPage1.dart';
import 'package:flutter_code/pages/DrawerPage.dart';
import 'package:flutter_code/pages/DrawerPage1.dart';
import 'package:flutter_code/pages/FormPage.dart';
import 'package:flutter_code/pages/SearchPage.dart';
import 'package:flutter_code/pages/Tabs.dart';
import 'package:flutter_code/widgets/button_demo.dart';
import 'package:flutter_code/widgets/floating_action_button_demo.dart';
import 'package:flutter_code/widgets/form_demo.dart';
import 'package:flutter_code/widgets/form_widget.dart';

// 配置路由，定义Map类型的Routes，Key为String类型，Value为Function类型
final Map<String, Function> routes = {
  '/': (context) => const Tabs(),
  '/search': (context) => const SearchPage(title: '搜索'),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/appBar': (context) => const AppBarPage(),
  '/appBar1': (context) => const AppBarPage1(),
  '/drawer': (context) => const DrawerPage1(),
  '/button': (context) => const ButtonDemo(),
  '/floatAction': (context) => const FloatingActionButtonDemo(),
  '/formDemo': (context) => const FormDemo(),
  '/formWidget': (context) => const FormWidget(),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
