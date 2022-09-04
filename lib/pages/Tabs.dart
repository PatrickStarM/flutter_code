import 'package:flutter/material.dart';
import 'package:flutter_code/pages/tabs/Category.dart';
import 'package:flutter_code/pages/tabs/Home.dart';
import 'package:flutter_code/pages/tabs/Setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List _pageList = [
    const HomePage(),
    const CategoryPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter 底部导航"),
      ),
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            // 改变状态
            _currentIndex = index;
          });
        },
        // icon的大小
        iconSize: 36.0,
        // 选中的颜色
        fixedColor: Colors.red,
        // 配置底部tabs可以有多个按钮
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
    );
  }
}
