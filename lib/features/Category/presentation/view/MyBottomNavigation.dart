import 'package:flutter/material.dart';
import 'package:social_app/features/Category/presentation/view/Home.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);
  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigation();
}

class _MyBottomNavigation extends State<MyBottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> pagesName = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    NoteificationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pagesName[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ));
  }
}
