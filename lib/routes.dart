import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/AppBarPage.dart';
import 'package:flutter_demo/pages/AppBarPage1.dart';
import 'package:flutter_demo/pages/DrawerPage1.dart';
import 'package:flutter_demo/pages/FormPage.dart';
import 'package:flutter_demo/pages/SearchPage.dart';
import 'package:flutter_demo/pages/Tabs.dart';
import 'package:flutter_demo/widgets/button_demo.dart';
import 'package:flutter_demo/widgets/date_demo.dart';
import 'package:flutter_demo/widgets/datepicker_pub_demo.dart';
import 'package:flutter_demo/widgets/dialog_demo.dart';
import 'package:flutter_demo/widgets/dio_demo.dart';
import 'package:flutter_demo/widgets/floating_action_button_demo.dart';
import 'package:flutter_demo/widgets/form_demo.dart';
import 'package:flutter_demo/widgets/form_widget.dart';
import 'package:flutter_demo/widgets/http_demo.dart';
import 'package:flutter_demo/widgets/my_dialog.dart';
import 'package:flutter_demo/widgets/news_content.dart';
import 'package:flutter_demo/widgets/news_page.dart';

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
  '/dateDemo': (context) => const DateDemo(),
  '/datePicker': (context) => const DatePickerPubDemo(),
  '/dialog': (context) => const DialogDemo(),
  '/mydialog': (context) => MyDialog(),
  '/http': (context) => const HttpDemo(),
  '/dio': (context) => const DioDemo(),
  '/news': (context) => const NewsPage(),
  '/news-content': (context, {arguments}) => NewsContent(arguments: arguments),
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
