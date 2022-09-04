import 'package:flutter/material.dart';
import 'package:flutter_code/data/data_list.dart';

class GridView2 extends StatelessWidget {
  const GridView2({Key? key}) : super(key: key);

  Widget _getListData(context, index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: Column(
          children: <Widget>[
            Image.network(listData[index]["imageUrl"]),
            const SizedBox(
              height: 12,
            ),
            Text(
              listData[index]["title"],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 横轴元素个数
        mainAxisExtent: 20.0, // 纵轴间距
        crossAxisSpacing: 10.0, //横轴间距
        childAspectRatio: 1.0, // 子组件宽高比例
      ),
      itemBuilder: _getListData,
    );
  }
}
