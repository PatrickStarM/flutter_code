import 'package:flutter/material.dart';

class DrawerPage1 extends StatelessWidget {
  const DrawerPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Drawer 组件'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('mth'),
              accountEmail: const Text('mth@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/puff.png"),
              ),
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: <Widget>[
                Image.network(
                    "https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/puff.png"),
                Image.network(
                    "https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/me.jpg"),
              ],
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
    );
  }
}
