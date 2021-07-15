import 'package:flutter/material.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/Crop1/Text_Crop_Screen.dart';
import 'package:ready_shout/screens/Crop2/Crop_Screen.dart';
import 'package:ready_shout/screens/Crop3/Cut_Screen.dart';
import 'package:rounded_tabbar_widget/rounded_tabbar_widget.dart';

class Changingbar extends StatefulWidget {

  @override
  _ChangingbarState createState() => _ChangingbarState();
}

class _ChangingbarState extends State<Changingbar> with SingleTickerProviderStateMixin
{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expanded(child: TabBarView(
            //     controller: _tabController,
            //     children: [
            //       // first tab bar view widget
            //
            //       CropScreen(),
            //       TextCropScreen(),
            //       CutScreen(),
            //
            //     ]
            // )),

            TabBar(
              controller: _tabController,
              labelColor: kPrimaryColor,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
              ),
              unselectedLabelColor: Color(0xFFAFB4C6),
              indicatorColor: kPrimaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4.0,
              isScrollable: true,
              onTap: (index) {
                var content = "";
                switch (index) {
                  case 0:
                    CropScreen();
                     content = "Crop";

                    break;
                  case 1:
                    TextCropScreen();
                     content = "text";

                    break;
                  case 2:
                      CutScreen();
                       content = "Cut";

                      break;
                  default:
                    CropScreen();
                    break;
                }
                 print("You are clicking the $content");
              },
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Crop',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Text',
                    style: TextStyle(
                      fontSize: 18.0,
                     // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Cut',
                    style: TextStyle(
                      fontSize: 18.0,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),



          ],
        ),
      ),
    );
  }
}
