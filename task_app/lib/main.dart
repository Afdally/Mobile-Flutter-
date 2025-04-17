import 'package:flutter/material.dart';
import 'package:task_app/page/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter("hive_boxes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Taskly App",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        useMaterial3: false, // Nonaktifkan Material 3
      ),
      home: HomePage(),
    );
  }
}
