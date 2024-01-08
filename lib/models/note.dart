import 'package:flutter/material.dart';

class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime
  });
}

List<Widget> allNotes = [];