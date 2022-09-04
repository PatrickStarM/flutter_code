import 'package:flutter/material.dart';

class ListDemo2 extends StatelessWidget {
  const ListDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            color: Colors.amber,
            child: ListView(
              children: <Widget>[
                Container(
                  width: 100,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 100,
                  color: Colors.amber,
                  child: ListView(
                    children: <Widget>[
                      Image.network('https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg'),
                      const SizedBox(height: 16.0),
                      const Text(
                        '这是一个文本信息',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 180,
                  color: Colors.orange,
                ),
                Container(
                  width: 180,
                  color: Colors.deepPurple,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
