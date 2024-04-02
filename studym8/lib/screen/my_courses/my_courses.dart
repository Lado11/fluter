import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studym8/screen/index.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({super.key});

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    // Text("asdsa"),
    MyCorsesSecond(),
    Text(
      'Index 2: Favorite',
    ),
    Text(
      'Index 3: Profile',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF3D348B),
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.doc_text,
            ),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

    );
  }
}
