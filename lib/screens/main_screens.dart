import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todos/screens/chatting/chatting_screen.dart';
import 'package:todos/screens/home/home_screen.dart';
import 'package:todos/screens/home/my_carrot_screen.dart';
import 'package:todos/screens/home/near_me_screen.dart';
import 'package:todos/screens/home/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('AppBar'),
      // ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          NeighborhoodLifeScrren(),
          NearMeScrren(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(CupertinoIcons.home),
          ),
          BottomNavigationBarItem(
            label: '동네생활',
            icon: Icon(CupertinoIcons.square_on_square),
          ),
          BottomNavigationBarItem(
            label: '내 근처',
            icon: Icon(CupertinoIcons.placemark),
          ),
          BottomNavigationBarItem(
            label: '채팅',
            icon: Icon(CupertinoIcons.chat_bubble),
          ),
          BottomNavigationBarItem(
            label: '나의 당근',
            icon: Icon(CupertinoIcons.person),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
    // return ;
  }
}
