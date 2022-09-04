import 'package:flutter/material.dart';
import 'package:flutter_code/routes.dart';

void main() {
  runApp(MyApp());
}
// 可以简写为
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
