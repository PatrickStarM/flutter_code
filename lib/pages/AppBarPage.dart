import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: "返回",
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Expanded(
                  flex: 1,
                  child: TabBar(
                    tabs: <Widget>[
                      Tab(text: "热门"),
                      Tab(text: "推荐"),
                    ],
                  ),
                )
              ],
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('Search Pressed');
                },
                icon: const Icon(Icons.search),
                tooltip: "Search",
              ),
              IconButton(
                onPressed: () {
                  print('more_horiz Pressed');
                },
                icon: const Icon(Icons.more_horiz),
                tooltip: "more_horiz",
              ),
            ],
            // bottom: const TabBar(tabs: <Widget>[
            //   Tab(text: "热门"),
            //   Tab(text: '推荐'),
            // ]),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: const <Widget>[
                  ListTile(title: Text("这是一个Tab")),
                  ListTile(title: Text("这是一个Tab")),
                  ListTile(title: Text("这是一个Tab"))
                ],
              ),
              ListView(
                children: const <Widget>[
                  ListTile(title: Text("这是二个Tab")),
                  ListTile(title: Text("这是二个Tab")),
                  ListTile(title: Text("这是二个Tab"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
