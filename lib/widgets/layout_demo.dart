import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.black87,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 1,
                  child: GridView.count(
                    crossAxisCount: 1,
                    childAspectRatio: 1.8,
                    mainAxisSpacing: 8,
                    children: [
                      Image.network(
                        'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf1.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/wolf2.jpg',
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
