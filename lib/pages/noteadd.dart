import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';

class NoteAdd extends StatefulWidget {
  const NoteAdd({Key? key}) : super(key: key);

  @override
  State<NoteAdd> createState() => _NoteAddState();
}

class _NoteAddState extends State<NoteAdd> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  void save() {}
  void lock() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: lock,
              icon: Icon(
                Icons.lock,
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
                stops: const [0.2, 0.6])),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
            child: Expanded(
                child: ListView(
              children: [
                TextField(
                  controller: _titleController,
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 30)),
                ),
                TextField(
                  controller: _contentController,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  maxLines: null,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type something here',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      )),
                ),
              ],
            ))),
      ),
      floatingActionButton:
          FloatingActionButton(backgroundColor: fgColor, onPressed: save, child: const Icon(Icons.save), elevation: 10),
    );
  }
}
