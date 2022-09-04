import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpDemo extends StatefulWidget {
  const HttpDemo({Key? key}) : super(key: key);

  @override
  State<HttpDemo> createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  List _list = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    var apiUrl = Uri.parse("https://jdmall.itying.com/api/pcate");

    var response = await http.get(apiUrl);
    if (response.statusCode == 200) {
      print(json.decode(response.body));
      setState(() {
        _list = json.decode(response.body)["result"];
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("请求数据Demo"),
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
