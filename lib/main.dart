// import 'package:assignment_3/nav.dart';
// import 'package:assignment_3/bottomn.dart';
import 'package:assignment_3/home_page.dart';
import 'package:assignment_3/profile.dart';
import 'package:flutter/material.dart';
import 'package:assignment_3/search_page.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()), // use MaterialApp
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIdx = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    Text('Reels'),
    Profile(),
  ];

  void _onItemTap(int idx) {
    setState(() {
      _selectedIdx = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIdx),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _selectedIdx == 0
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Colors.black,
              ),
              label: "Home",
              backgroundColor: const Color(0xffe0e0e0)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: _selectedIdx == 1
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Colors.black,
              ),
              label: "Search",
              backgroundColor: const Color(0xffe0e0e0)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.ondemand_video,
                color: _selectedIdx == 2
                    ? Color.fromRGBO(203, 73, 101, 1)
                    : Colors.black,
              ),
              label: "Reels",
              backgroundColor: const Color(0xffe0e0e0)),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIdx == 3
                  ? Color.fromRGBO(203, 73, 101, 1)
                  : Colors.black,
            ),
            label: "Profile",
            backgroundColor: const Color(0xffe0e0e0),
          ),
        ],
        currentIndex: _selectedIdx,
        onTap: _onItemTap,
      ),
    );
  }
}
