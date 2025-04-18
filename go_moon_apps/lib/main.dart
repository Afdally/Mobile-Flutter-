import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoMoon',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(31, 31, 31, 10)
       ),
      home: HomePage(),
    );
  }
}
