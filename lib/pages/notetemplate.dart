import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';

import '../models/note.dart';

class NoteTemplate extends StatelessWidget {
  final Note note;
  final Random stopsDetermine = Random();
  NoteTemplate({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              gradient: LinearGradient(
                colors: [
                Colors.black,
                bgColor,
                Color.fromARGB(255, 40, 39, 39),
                
              ],
              stops: [0.7, 0.8, 0.95],
              begin: Alignment.centerLeft,
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
                child: Column(children: [
                  Text(note.id.toString()),
                  Text(note.title),
                  Text(note.content),
                  Text(note.modifiedTime.toString())
                ],
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,)
              ),
            ),
          ),
        ),
    );
  }
}
