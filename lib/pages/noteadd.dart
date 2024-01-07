import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';

class NoteAdd extends StatelessWidget {
  const NoteAdd({Key? key}) : super(key: key);

  void save() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: save,
              icon: Icon(
                Icons.save,
                color: fgColor,
              ))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(color: Colors.red, width: 2.0),
            gradient: LinearGradient(
                colors: [Colors.black, bgColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.9])),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            TextField(
              decoration:
                  InputDecoration(hintText: "Title", focusColor: fgColor),
            ),
            SizedBox(height: 30.0),
            TextField(
              decoration:
                  InputDecoration(hintText: "Content", focusColor: fgColor),
            )
          ]),
        ),
      ),
    );
  }
}
