import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ready_shout/constants.dart';
import 'package:ready_shout/screens/Crop1/Text_Crop_Screen.dart';
import 'package:ready_shout/screens/Crop1/components/body.dart';
import 'package:ready_shout/screens/Crop2/Crop_Screen.dart';
import 'package:ready_shout/screens/Crop3/Cut_Screen.dart';

class Editable extends StatefulWidget {
  // const xxx({key}) : super(key: key);

  @override
  _EditableState createState() => _EditableState();
}

class _EditableState extends State<Editable> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,


        children: [

          Expanded(child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget

                CropScreen(),
                TextCropScreen(),
                CutScreen(),

              ]
          )),

          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 0,bottom: 100),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,right: 10),
                  child: Container(

                    decoration: BoxDecoration(
                      color: Color(0xFFAFB4C6),
                      borderRadius: BorderRadius.all(Radius.circular(8),),
                    ),
                    height: 46,
                    width: 59,
                    child: Center(
                      child: SvgPicture.asset(
                        "icons/cropcross.svg",
                        height:15,
                        width: 15,),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        // onTap: (index) {
                        //   var content = "";
                        //   switch (index) {
                        //     case 0:
                        //       CropScreen();
                        //       content = "Crop";
                        //
                        //       break;
                        //     case 1:
                        //       TextCropScreen();
                        //       content = "text";
                        //
                        //       break;
                        //     case 2:
                        //       CutScreen();
                        //       content = "Cut";
                        //
                        //       break;
                        //     default:
                        //       CropScreen();
                        //       break;
                        //   }
                        //   print("You are clicking the $content");
                        // },
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
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 7),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8),),
                    ),
                    height: 46,
                    width: 59,
                    child: Center(
                      child: SvgPicture.asset(
                        "icons/tixk.svg",
                        height:15,
                        width: 15,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),



    );
  }
}
