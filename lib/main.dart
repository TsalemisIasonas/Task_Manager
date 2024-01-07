import 'package:flutter/material.dart';
import 'package:task_manager/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager",
      home: const HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
        backgroundColor: const Color.fromARGB(255, 11, 11, 11),
        fontFamily: 'Aquire'
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
