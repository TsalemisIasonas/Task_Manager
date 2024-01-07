import 'package:flutter/material.dart';
import 'package:task_manager/pages/add_task_page.dart';
import 'package:task_manager/pages/my_tasks.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [const HomePage(),const AddTask(),MyTasks()];
    int currIndex = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Task\n\t\tManager"),
        ),
        body: screens[currIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'My Tasks',
            ),
          ],
        ));
  }
}
