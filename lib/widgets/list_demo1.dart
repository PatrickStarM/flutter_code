import 'package:flutter/material.dart';

class ListDemo1 extends StatelessWidget {
  const ListDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'this is List',
              style: TextStyle(fontSize: 28.0),
            ),
            subtitle: Text('this is list this is list'),
          ),
          ListTile(
            title: Text('this is List'),
            subtitle: Text('this is List this is List'),
            trailing: Icon(Icons.phone),
          ),
          ListTile(
            title: Text('this is list'),
            subtitle: Text('this is List this is lIst'),
          ),
          ListTile(
            title: Text('this is list'),
            subtitle: Text('this is List this is lIst'),
          )
        ],
      ),
    );
  }
}
