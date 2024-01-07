import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';

class NoteCategory {
  final String name;
  final IconData icon;

  NoteCategory(this.name, this.icon);
}

class NoteCategoryWidget extends StatelessWidget {
  final NoteCategory noteCategory;

  const NoteCategoryWidget(this.noteCategory);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.purple,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(noteCategory.icon),
            const SizedBox(height: 8.0),
            Text(noteCategory.name),
          ],
        ),
      ),
    );
  }
}

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

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
          height: screenSize.height/2, // Adjust the height as needed
          width: 3*screenSize.width/4,
          child: PageView.builder(
            itemCount: 2, // Number of NoteCategoryWidget instances
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: NoteCategoryWidget(index == 0
                    ? NoteCategory("Note", Icons.note_alt_rounded)
                    : NoteCategory("CheckList", Icons.checklist_rounded)),
              );
            },
          ),
        ),
      ),
    );
  }
}