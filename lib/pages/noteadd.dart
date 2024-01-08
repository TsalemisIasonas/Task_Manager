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
  

  void save() {
    Navigator.pop(context,[_titleController.text, _contentController.text]);
  }
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
                  style: const TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'Sans Serif'),
                  decoration: const InputDecoration(
                    focusColor: Colors.red,
                      border: InputBorder.none,
                      hintText: 'Title',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 30,fontFamily: 'Aquire')),
                ),
                TextField(
                  controller: _contentController,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Sans Serif'
                  ),
                  maxLines: null,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type something here',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: 'Aquire'
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
