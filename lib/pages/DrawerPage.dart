import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent,
            title: const Text('Drawer 组件'),
          ),
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: ListView(
                    children: const <Widget>[
                      Text('我是头部'),
                    ],
                  ),
                ),
                const ListTile(
                  title: Text('个人中心'),
                  leading: CircleAvatar(child: Icon(Icons.people)),
                ),
                const Divider(),
                const ListTile(
                  title: Text('系统设置'),
                  leading: CircleAvatar(
                    child: Icon(Icons.settings),
                  ),
                )
              ],
            ),
          ),
          endDrawer: const Drawer(
            child: Text("右侧侧边栏"),
          ),
        ),
      ),
    );
  }
}
