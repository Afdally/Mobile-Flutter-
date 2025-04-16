import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage();
  @override
  State<StatefulWidget> createState() {
    return _HomePgeState();
  }
}

class _HomePgeState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;

  _HomePgeState();
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: Text("Taskly!", style: TextStyle(fontSize: 25)),
      ),
      body: _taskList(),
      floatingActionButton: _addTaskButton(),
    );
  }

  Widget _taskList() {
    return ListView(
      children: [
        ListTile(
          title: const Text(
            "belajar",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: Icon(Icons.check_box_outlined, color: Colors.lightGreen),
        ),
        ListTile(
          title: const Text(
            "Ngoding",
            style: TextStyle(decoration: TextDecoration.lineThrough),
          ),
          subtitle: Text(DateTime.now().toString()),
          trailing: Icon(Icons.check_box_outlined, color: Colors.lightGreen),
        ),
      ],
    );
  }

  Widget _addTaskButton() {
    return FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add));
  }
}
