import 'package:flutter/material.dart';
import 'package:task_app/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Taskly App",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: HomePage(),
    );
  }
}
