import 'package:flutter/material.dart';
import 'package:task_manager/pages/add_task_page.dart';
import 'package:task_manager/pages/my_tasks.dart';
import 'package:task_manager/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [
    HomePageContent(),
    AddTask(),
    MyTasks(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        backgroundColor: Colors.black,
        fixedColor: fgColor,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager"),
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: Container(
          decoration:  const BoxDecoration(
            gradient: LinearGradient(
              colors:  [
                Color.fromARGB(255, 52, 11, 56),
                Color.fromARGB(255, 45, 6, 49),
                Color.fromARGB(255, 11, 11, 11),
              ],
              stops: [0.1, 0.15,0.6], // Adjust the stops to control the distribution
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      );
  }
}

// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Implement your custom painting logic here
//     final Paint paint = Paint()
//       ..color = Colors.white
//       ..strokeCap = StrokeCap.round
//       ..strokeWidth = 10.0;

//     // Draw some custom shapes
//     canvas.drawLine(const Offset(50, 50), const Offset(200, 200), paint);
//     canvas.drawCircle(const Offset(300, 300), 50, paint);
//     // Add more custom drawing operations as needed
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
