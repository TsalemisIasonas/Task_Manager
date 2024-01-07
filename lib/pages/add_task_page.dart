import 'package:flutter/material.dart';
import 'package:task_manager/constants/colors.dart';


class AddTask extends StatelessWidget {
   const AddTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Task"),
      elevation: 0,
      backgroundColor: Colors.black,),
      body: Container(
        color: bgColor,
      ),
    );
    
  }
}