import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const <Widget>[
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级软件工程师'),
              ),
              Divider(),
              ListTile(
                title: Text('电话：11100003333'),
              ),
              ListTile(
                title: Text("地址：江苏省南京市"),
              ),
            ],
          ),
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const <Widget>[
              ListTile(
                title: Text(
                  "李四",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级软件工程师'),
              ),
              Divider(),
              ListTile(
                title: Text('电话：11122223333'),
              ),
              ListTile(
                title: Text('地址：江苏省徐州市'),
              )
            ],
          ),
        )
      ],
    );
  }
}
