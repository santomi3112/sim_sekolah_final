import 'package:flutter/material.dart';
import 'package:sim_sekolah_final/fitur/attendance.dart';
import 'package:sim_sekolah_final/fitur/fees.dart';
import 'package:sim_sekolah_final/fitur/homework.dart';
import 'package:sim_sekolah_final/fitur/profile.dart';
import 'package:sim_sekolah_final/fitur/timetable.dart';
import 'loginregtab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sim Sekolah",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Loginreg(
        title: "Sim Sekolah",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title}) : super();
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  final List<Widget> pages = [
    Timetable(),
    Homework(),
    Attendance(),
    Fees(),
    Profile()
  ];

  void _incrementTab(index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[i],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: i,
        onTap: (index) {
          _incrementTab(index);
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(Icons.schedule),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(Icons.remove_circle), //non active ganti
            ),
            title: Text('Timetable'),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset(
                'images/homework.png',
                height: 25.0,
                width: 25.0,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(Icons.remove_circle),
            ),
            title: Text('Homework'),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset(
                'images/habit.png',
                height: 25.0,
                width: 25.0,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(Icons.remove_circle),
            ),
            title: Text('Attendance'),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset(
                'images/fee.png',
                height: 25.0,
                width: 25.0,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(Icons.remove_circle),
            ),
            title: Text('Fees'),
          ),
          BottomNavigationBarItem(
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Image.asset(
                'images/user.png',
                height: 25.0,
                width: 25.0,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Icon(Icons.remove_circle),
            ),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
