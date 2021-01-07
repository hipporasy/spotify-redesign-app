import 'package:flutter/material.dart';
import 'package:spotify/src/screens/home/home.dart';
import 'package:spotify/src/screens/music_library/music_library.dart';
import 'package:spotify/src/theme/colors.dart';
import 'package:spotify/src/theme/images.dart';

class MasterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  List<Widget> _screens = [
    HomeScreen(),
    MusicLibraryScreen(),
    Container(),
    Container(),
    Container()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primaryBackground,
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColor.primary,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_library_music), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '')
        ],
      ),
    );
  }
}
