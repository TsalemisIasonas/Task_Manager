import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';
import 'package:task_manager/pages/checklistadd.dart';
import 'package:task_manager/pages/noteadd.dart';
import 'package:task_manager/pages/notetemplate.dart';
import '../models/note.dart';

class NoteCategory {
  final String name;
  final IconData icon;

  NoteCategory(this.name, this.icon);
}

class NoteCategoryWidget extends StatelessWidget {
  final NoteCategory noteCategory;
  final VoidCallback categoryFunction;

  const NoteCategoryWidget(this.noteCategory, this.categoryFunction);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: const LinearGradient(
              colors: [
              Color.fromARGB(255, 134, 49, 142),
              Color.fromARGB(255, 130, 0, 145),
              Color.fromARGB(255, 106, 12, 169),
            ],
            stops: [0.2, 0.5, 0.95],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: categoryFunction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      noteCategory.icon,
                      size: 100,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      noteCategory.name,
                      style: const TextStyle(fontSize: 40.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  void noteCreate() async {
    final res = await Navigator.push(context, MaterialPageRoute(builder: (context) => const NoteAdd()));

    if (res!= null){
      allNotes.add(
        NoteTemplate(note: Note(id: allNotes.length+1,title: res[0],content: res[1], modifiedTime: DateTime.now())
      )
      );
    }
  }

  void checklistCreate() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: ((context) => const CheckListAdd())));
    });
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("Add New Task"),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: screenSize.height / 2,
          width: 3 * screenSize.width / 4,
          child: PageView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: NoteCategoryWidget(
                  index == 0
                      ? NoteCategory("Note", Icons.note_alt_rounded)
                      : NoteCategory("CheckList", Icons.checklist_rounded),
                  index == 0 ? noteCreate : checklistCreate,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
