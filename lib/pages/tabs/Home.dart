import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/SearchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        // ElevatedButton(
        //   child: const Text("搜索内容!!!"),
        //   onPressed: () {
        //     Navigator.of(context)
        //         .push(MaterialPageRoute(builder: (BuildContext context) {
        //       return const SearchPage(title: "search");
        //     }));
        //   },
        // ),
        ElevatedButton(
          child: const Text("跳转到表单页面！！！"),
          onPressed: () {
            Navigator.pushNamed(context, "/form",
                arguments: {'id': 29, 'name': "张三"});
            // Navigator.of(context).pop(); // 返回上一级
            // Navigator.of(context).pushReplacementNamed('/registerSecond'); // 替换路由
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(builder: (context) => new Tabs(index:1)),
            // );
            //     (route) => route == null
            // ); // 返回根路由
          },
        ),
        ElevatedButton(
          child: const Text("AppBar"),
          onPressed: () {
            Navigator.pushNamed(context, "/appBar");
          },
        ),
        ElevatedButton(
          child: const Text("顶部tab切换"),
          onPressed: () {
            Navigator.pushNamed(context, "/appBar1");
          },
        ),
        ElevatedButton(
          child: const Text("侧边"),
          onPressed: () {
            Navigator.pushNamed(context, "/drawer");
          },
        ),
        ElevatedButton(
          child: const Text("按钮合集"),
          onPressed: () {
            Navigator.pushNamed(context, "/button");
          },
        ),
        ElevatedButton(
          child: const Text("底部导航凸起按钮"),
          onPressed: () {
            Navigator.pushNamed(context, "/floatAction");
          },
        ),
        ElevatedButton(
          child: const Text("flutter表单"),
          onPressed: () {
            Navigator.pushNamed(context, "/formDemo");
          },
        ),
        ElevatedButton(
          child: const Text("学员登记系统"),
          onPressed: () {
            Navigator.pushNamed(context, "/formWidget");
          },
        ),
        ElevatedButton(
          child: const Text("日期DEMO"),
          onPressed: () {
            Navigator.pushNamed(context, "/dateDemo");
          },
        ),
        ElevatedButton(
          child: const Text("时间组件flutter_datetime_picker"),
          onPressed: () {
            Navigator.pushNamed(context, "/datePicker");
          },
        ),
        ElevatedButton(
          child: const Text("Dialog对话框"),
          onPressed: () {
            Navigator.pushNamed(context, "/dialog");
          },
        ),
        ElevatedButton(
          child: const Text("自定义Dialog对话框&结合定时器"),
          onPressed: () {
            Navigator.pushNamed(context, "/mydialog");
          },
        ),
        ElevatedButton(
          child: const Text("网络请求"),
          onPressed: () {
            Navigator.pushNamed(context, "/http");
          },
        ),
        ElevatedButton(
          child: const Text("Dio网络请求"),
          onPressed: () {
            Navigator.pushNamed(context, "/dio");
          },
        ),
        ElevatedButton(
          child: const Text("上拉加载，下拉刷新"),
          onPressed: () {
            Navigator.pushNamed(context, "/news");
          },
        ),
      ],
    ));
  }
}
