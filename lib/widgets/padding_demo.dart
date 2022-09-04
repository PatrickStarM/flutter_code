import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  const PaddingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
