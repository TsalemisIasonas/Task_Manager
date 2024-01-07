import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';

class MyTasks extends StatelessWidget {
  const MyTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tasks"),
        actions: [
          Row(
            children: const [Text("|", style: TextStyle(fontSize: 32.0),), Padding(
              padding: EdgeInsets.fromLTRB(5, 19, 5, 20),
              child: Icon(Icons.search),
            )],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: bgColor,
      ),
    );
  }
}
