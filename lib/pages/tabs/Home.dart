import 'package:flutter/material.dart';
import 'package:flutter_code/pages/SearchPage.dart';

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
        ElevatedButton(
          child: const Text("搜索内容!!!"),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const SearchPage(title: "search");
            }));
          },
        ),
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
      ],
    ));
  }
}
