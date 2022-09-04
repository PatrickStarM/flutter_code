import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DioDemo extends StatefulWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  State<DioDemo> createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  List _list = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {

    var response = await Dio().get("https://jdmall.itying.com/api/pcate");
    print(response.data);
    print(response.statusCode);
    if (response.statusCode == 200) {
      setState(() {
        _list = response.data["result"];
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dio请求数据Demo"),
        ),
        body: _list.isNotEmpty
            ? ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return ListTile(title: Text(_list[index]['title']));
          },
        )
            : const Text(""));
  }
}
