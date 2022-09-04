import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/row_demo.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: IconContainer(Icons.home),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(flex: 3, child: IconContainer(Icons.search)),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: IconContainer(Icons.send),
          ),
        ],
      ),
    );
  }
}
