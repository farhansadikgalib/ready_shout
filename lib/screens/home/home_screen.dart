import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ready_shout/screens/Archive/archive_screen.dart';
import 'package:ready_shout/screens/Crop2/Crop_Screen.dart';
import 'package:ready_shout/screens/Test/editable.dart';
import 'package:ready_shout/screens/profile/profilescreen.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
     static String routeName = "/home";

     var _selectedTab = _SelectedTab.home;

     void _handleIndexChanged(int i) {
       setState(() {
         _selectedTab = _SelectedTab.values[i];
         return i;
       });
     }

     int _selectedIndex = 0;
     List<Widget> _widgetOptions = <Widget>[
       FullScreen(),
       ArchiveScreen(),
       Editable(),
       ProfilefillScreen(),

     ];

     void _onItemTap(int index) {
       setState(() {
         _selectedIndex = index;
       });
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         extendBody: true,
         body: Center(
           child: _widgetOptions.elementAt(_selectedIndex),
         ),
         bottomNavigationBar: DotNavigationBar(
           margin: EdgeInsets.only(left: 10, right: 10),
           // currentIndex: _SelectedTab.values.indexOf(_selectedTab),
           currentIndex: _selectedIndex,
           onTap: _onItemTap,
           backgroundColor: Color.fromRGBO(120, 105, 198, 1),
           dotIndicatorColor: Colors.white,
           unselectedItemColor: Color.fromRGBO(161, 150, 215, 1),
           enableFloatingNavBar: false,
           // onTap: _handleIndexChanged,
           items: [
             /// Home
             DotNavigationBarItem(
               icon: Icon(Icons.home),
               selectedColor: Colors.white,
             ),

             /// Likes
             DotNavigationBarItem(
               icon: Icon(Icons.insert_drive_file_rounded),
               selectedColor: Colors.white,
             ),

             /// Search
             DotNavigationBarItem(
               icon: Icon(Icons.create),
               selectedColor: Colors.white,
             ),

             /// Profile
             DotNavigationBarItem(
               icon: Icon(Icons.person),
               selectedColor: Colors.white,
             ),
           ],
         ),
       );
     }
}

enum _SelectedTab { home, document, create, person }